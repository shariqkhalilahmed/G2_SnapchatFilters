/************************************************************************/
/*																		*/
/*	video_demo.c	--	ZYBO Video demonstration 						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2015, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		This file contains code for running a demonstration of the		*/
/*		Video input and output capabilities on the ZYBO. It is a good	*/
/*		example of how to properly use the display_ctrl and				*/
/*		video_capture drivers.											*/
/*																		*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		11/25/2015(SamB): Created										*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "video_demo.h"
#include "video_capture/video_capture.h"
#include "display_ctrl/display_ctrl.h"
#include "intc/intc.h"
#include <stdio.h>
#include "xuartlite_l.h"
//#include "xuartps.h"
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "overlay.h"
#include "block_detector.h"



/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID
#define VID_VTC_ID XPAR_VTC_1_DEVICE_ID
#define VID_GPIO_ID XPAR_AXI_GPIO_VIDEO_DEVICE_ID
#define VID_VTC_IRPT_ID XPAR_INTC_0_VTC_1_VEC_ID
#define VID_GPIO_IRPT_ID XPAR_INTC_0_GPIO_0_VEC_ID
#define SCU_TIMER_ID XPAR_AXI_TIMER_0_DEVICE_ID
#define UART_BASEADDR XPAR_UARTLITE_0_BASEADDR

#define BT_BASEADDR 0x40610000

#define BLOCK_DETECTOR_0 XPAR_BLOCK_DETECTOR_0_S00_AXI_BASEADDR
#define BLOCK_DETECTOR_1 XPAR_BLOCK_DETECTOR_1_S00_AXI_BASEADDR
#define BLOCK_DETECTOR_2 XPAR_BLOCK_DETECTOR_2_S00_AXI_BASEADDR
#define BLOCK_DETECTOR_3 XPAR_BLOCK_DETECTOR_3_S00_AXI_BASEADDR


#define OVERLAY_0 XPAR_OVERLAY_0_S00_AXI_BASEADDR
#define OVERLAY_1 XPAR_OVERLAY_1_S00_AXI_BASEADDR

#define FACE_SWAP_0 XPAR_FACE_SWAP_0_S00_AXI_BASEADDR

//orange
u32 r_min_1 = 140;
u32 r_max_1 = 255;
u32 g_min_1 = 60;
u32 g_max_1 = 100;
u32 b_min_1 = 0;
u32 b_max_1 = 30;

//green
u32 r_min_2 = 0;
u32 r_max_2 = 50;
u32 g_min_2 = 80;
u32 g_max_2 = 255;
u32 b_min_2 = 0;
u32 b_max_2 = 50;

//magenta
u32 r_min_3 = 100;
u32 r_max_3 = 255;
u32 g_min_3 = 0;
u32 g_max_3 = 50;
u32 b_min_3 = 100;
u32 b_max_3 = 255;

//cyan
u32 r_min_4 = 0;
u32 r_max_4 = 80;
u32 g_min_4 = 120;
u32 g_max_4 = 255;
u32 b_min_4 = 200;
u32 b_max_4 = 255;





/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * Display and Video Driver structs
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;
VideoCapture videoCapt;
INTC intc;
char fRefresh; //flag used to trigger a refresh of the Menu on video detect


/*
 * Framebuffers for video data
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME];
u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers

/*
 * Interrupt vector table
 */
const ivt_t ivt[] = {
	videoGpioIvt(VID_GPIO_IRPT_ID, &videoCapt),
	videoVtcIvt(VID_VTC_IRPT_ID, &(videoCapt.vtc))
};

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

int main(void)
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	DemoInitialize();

	DemoRun();

	return 0;
}


void DemoInitialize()
{
	int Status;
	XAxiVdma_Config *vdmaConfig;
	int i;

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/*
	 * Initialize VDMA driver
	 */
	vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
	if (!vdmaConfig)
	{
		xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA_ID);
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Display controller and start it
	 */
	Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Display Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't start display during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Interrupt controller and start it.
	 */
	Status = fnInitInterruptController(&intc);
	if(Status != XST_SUCCESS) {
		xil_printf("Error initializing interrupts");
		return;
	}
	fnEnableInterrupts(&intc, &ivt[0], sizeof(ivt)/sizeof(ivt[0]));

	/*
	 * Initialize the Video Capture device
	 */
	Status = VideoInitialize(&videoCapt, &intc, &vdma, VID_GPIO_ID, VID_VTC_ID, VID_VTC_IRPT_ID, pFrames, DEMO_STRIDE, DEMO_START_ON_DET);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Video Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Set the Video Detect callback to trigger the menu to reset, displaying the new detected resolution
	 */
	VideoSetCallback(&videoCapt, DemoISR, &fRefresh);

	DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride, DEMO_PATTERN_1);

	return;
}

void DemoRun()
{
	int nextFrame = 0;
	char userInput = 0;
	u32 locked;
	XGpio *GpioPtr = &videoCapt.gpio;
	u32 is_green = 0;
	char user_byte = 0;
	u8 draw_r = 0;
	u8 draw_g = 0;
	u8 draw_b = 0;
	u32 rq_width = 1920;
	u32 rq_height = 1080;
	u32 rq_g_min = 100;
	u32 rq_b_max = 50;
	u32 rq_r_max = 50;

	/* set detecting resolution and color limits */
	/*
	BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR, 64, rq_width);
	BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR, 68, rq_height);
	BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR, 72, rq_g_min);
	BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR, 76, rq_b_max);
	BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR, 80, rq_r_max);
	*/

	/* set resolution of output display */
	int disp_status;
	disp_status = DisplayStop(&dispCtrl);
	DisplaySetMode(&dispCtrl, &VMODE_1920x1080);
	DisplayStart(&dispCtrl);
	if (disp_status == XST_DMA_ERROR)
	{
		xil_printf("\n\rWARNING: AXI VDMA Error detected and cleared\n\r");
	}

	/* Flush UART FIFO */
	while (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
	{
		XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
	}
	while (userInput != 'q')
	{
		fRefresh = 0;
		DemoPrintMenu();


		/* Wait for data on UART */
		while (XUartLite_IsReceiveEmpty(UART_BASEADDR) && !fRefresh)
		{
			/*
			if(!XUartLite_IsReceiveEmpty(BT_BASEADDR)) {
				user_byte = (u8)XUartLe_ReadReg(BT_BASEADDR, XUL_RX_FIFO_OFFSET);
				xil_printf("%c", user_byte);
			}
			*/
		}

		/* Store the first character in the UART receive FIFO and echo it */
		if (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
		{
			userInput = XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
			xil_printf("%c", userInput);
		}
		else  //Refresh triggered by video detect interrupt
		{
			userInput = 'r';
		}

		switch (userInput)
		{
		case '1':
			DemoChangeRes();
			break;
		case '2':
			nextFrame = dispCtrl.curFrame + 1;
			if (nextFrame >= DISPLAY_NUM_FRAMES)
			{
				nextFrame = 0;
			}
			DisplayChangeFrame(&dispCtrl, nextFrame);
			break;
		case '3':
			DemoPrintTest(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, DEMO_PATTERN_0);
			break;
		case '4':
			DemoPrintTest(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, DEMO_PATTERN_1);
			break;
		case '5':
			if (videoCapt.state == VIDEO_STREAMING)
				VideoStop(&videoCapt);
			else
				VideoStart(&videoCapt);
			break;
		case '6':
			nextFrame = videoCapt.curFrame + 1;
			if (nextFrame >= DISPLAY_NUM_FRAMES)
			{
				nextFrame = 0;
			}
			VideoChangeFrame(&videoCapt, nextFrame);
			break;
		case '7':
			nextFrame = videoCapt.curFrame + 1;
			if (nextFrame >= DISPLAY_NUM_FRAMES)
			{
				nextFrame = 0;
			}
			VideoStop(&videoCapt);
			DemoInvertFrame(pFrames[videoCapt.curFrame], pFrames[nextFrame], videoCapt.timing.HActiveVideo, videoCapt.timing.VActiveVideo, DEMO_STRIDE);
			VideoStart(&videoCapt);
			DisplayChangeFrame(&dispCtrl, nextFrame);
			break;
		case '8':
			nextFrame = videoCapt.curFrame + 1;
			if (nextFrame >= DISPLAY_NUM_FRAMES)
			{
				nextFrame = 0;
			}
			VideoStop(&videoCapt);
			DemoScaleFrame(pFrames[videoCapt.curFrame], pFrames[nextFrame], videoCapt.timing.HActiveVideo, videoCapt.timing.VActiveVideo, dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE);
			VideoStart(&videoCapt);
			DisplayChangeFrame(&dispCtrl, nextFrame);
			break;
		case '9':
			OVERLAY_mWriteReg(OVERLAY_0, 0, 2);
			OVERLAY_mWriteReg(OVERLAY_1, 0, 2);
			while(1)
			{
				if(!XUartLite_IsReceiveEmpty(BT_BASEADDR)) {
					user_byte = (u8)XUartLite_ReadReg(BT_BASEADDR, XUL_RX_FIFO_OFFSET);
				}

				//orange green
				//magenta cyan

				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_1, 64, r_min_1);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_1, 68, r_max_1);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_1, 72, g_min_1);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_1, 76, g_max_1);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_1, 80, b_min_1);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_1, 84, b_max_1);

				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_0, 64, r_min_2);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_0, 68, r_max_2);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_0, 72, g_min_2);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_0, 76, g_max_2);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_0, 80, b_min_2);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_0, 84, b_max_2);

				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_2, 64, r_min_3);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_2, 68, r_max_3);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_2, 72, g_min_3);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_2, 76, g_max_3);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_2, 80, b_min_3);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_2, 84, b_max_3);

				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_3, 64, r_min_4);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_3, 68, r_max_4);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_3, 72, g_min_4);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_3, 76, g_max_4);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_3, 80, b_min_4);
				BLOCK_DETECTOR_mWriteReg(BLOCK_DETECTOR_3, 84, b_max_4);

				if (user_byte == 'R') {

					OVERLAY_mWriteReg(OVERLAY_0, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 32, 1);

					OVERLAY_mWriteReg(OVERLAY_1, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 32, 1);


					OVERLAY_mWriteReg(OVERLAY_0, 60, 0);

					//handle first person
					u32 x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_0, 20);
					u32 x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 24);
					u32 y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 28);

					u32 y_min = y_mid - (x_max - x_min);
					u32 y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;


					if(y_max - y_min <= 128 && x_max - x_min <= 128)
					{
						OVERLAY_mWriteReg(OVERLAY_0, 20, x_min );
						OVERLAY_mWriteReg(OVERLAY_0, 24, x_max );
						OVERLAY_mWriteReg(OVERLAY_0, 28, y_min );
						OVERLAY_mWriteReg(OVERLAY_0, 32, y_max );
					}

					//handle second person
					x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_2, 20);
					x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 24);
					y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 28);

					y_min = y_mid - (x_max - x_min);
					y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;


					if(y_max - y_min <= 128 && x_max - x_min <= 128)
					{
						OVERLAY_mWriteReg(OVERLAY_1, 20, x_min );
						OVERLAY_mWriteReg(OVERLAY_1, 24, x_max );
						OVERLAY_mWriteReg(OVERLAY_1, 28, y_min );
						OVERLAY_mWriteReg(OVERLAY_1, 32, y_max );
					}


					draw_r = 255;
					draw_g = 0;
					draw_b = 0;
				}
				else if (user_byte == 'B') {

					OVERLAY_mWriteReg(OVERLAY_0, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 32, 1);

					OVERLAY_mWriteReg(OVERLAY_1, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 32, 1);



					OVERLAY_mWriteReg(OVERLAY_0, 60, 16384);
					//handle first person
					u32 x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_0, 20);
					u32 x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 24);
					u32 y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 28);

					u32 y_min = y_mid - (x_max - x_min);
					u32 y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;


					if(y_max - y_min <= 128 && x_max - x_min <= 128)
					{
						OVERLAY_mWriteReg(OVERLAY_0, 20, x_min );
						OVERLAY_mWriteReg(OVERLAY_0, 24, x_max );
						OVERLAY_mWriteReg(OVERLAY_0, 28, y_min );
						OVERLAY_mWriteReg(OVERLAY_0, 32, y_max );
					}
					//handle second person
					x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_2, 20);
					x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 24);
					y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 28);

					y_min = y_mid - (x_max - x_min);
					y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;

					if(y_max - y_min <= 128 && x_max - x_min <= 128)
					{
						OVERLAY_mWriteReg(OVERLAY_1, 20, x_min );
						OVERLAY_mWriteReg(OVERLAY_1, 24, x_max );
						OVERLAY_mWriteReg(OVERLAY_1, 28, y_min );
						OVERLAY_mWriteReg(OVERLAY_1, 32, y_max );
					}


					draw_r = 0;
					draw_b = 255;
					draw_g = 0;
				}
				else if (user_byte == 'G') {

					OVERLAY_mWriteReg(OVERLAY_0, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 32, 1);

					OVERLAY_mWriteReg(OVERLAY_1, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 32, 1);



					OVERLAY_mWriteReg(OVERLAY_0, 60, 32768);
					//handle first person
					u32 x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_0, 20);
					u32 x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 24);
					u32 y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 28);

					u32 y_min = y_mid - (x_max - x_min);
					u32 y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;


					if(y_max - y_min <= 128 && x_max - x_min <= 128)
					{
						OVERLAY_mWriteReg(OVERLAY_0, 20, x_min );
						OVERLAY_mWriteReg(OVERLAY_0, 24, x_max );
						OVERLAY_mWriteReg(OVERLAY_0, 28, y_min );
						OVERLAY_mWriteReg(OVERLAY_0, 32, y_max );
					}
					//handle second person
					x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_2, 20);
					x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 24);
					y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 28);

					y_min = y_mid - (x_max - x_min);
					y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;

					if(y_max - y_min <= 128 && x_max - x_min <= 128)
					{
						OVERLAY_mWriteReg(OVERLAY_1, 20, x_min );
						OVERLAY_mWriteReg(OVERLAY_1, 24, x_max );
						OVERLAY_mWriteReg(OVERLAY_1, 28, y_min );
						OVERLAY_mWriteReg(OVERLAY_1, 32, y_max );
					}


					draw_r = 0;
					draw_b = 0;
					draw_g = 255;
				}
				else if (user_byte == 'W') {



					OVERLAY_mWriteReg(OVERLAY_0, 60, 0);
					//handle first person
					u32 x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_0, 20);
					u32 x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 24);
					u32 y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_1, 28);

					u32 y_min = y_mid - (x_max - x_min);
					u32 y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;

					OVERLAY_mWriteReg(OVERLAY_0, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_0, 32, 1);

					OVERLAY_mWriteReg(OVERLAY_1, 20, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 24, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 28, 1);
					OVERLAY_mWriteReg(OVERLAY_1, 32, 1);


					if(y_max - y_min <= 256 && x_max - x_min <= 246)
					{
						OVERLAY_mWriteReg(FACE_SWAP_0, 0, x_min );
						OVERLAY_mWriteReg(FACE_SWAP_0, 4, x_max );
						OVERLAY_mWriteReg(FACE_SWAP_0, 8, y_min );
						OVERLAY_mWriteReg(FACE_SWAP_0, 12, y_max );
					}

					//handle second person
					x_min = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_2, 20);
					x_max = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 24);
					y_mid = BLOCK_DETECTOR_mReadReg(BLOCK_DETECTOR_3, 28);

					y_min = y_mid - (x_max - x_min);
					y_max = y_mid + (x_max - x_min);

					if(y_min > 1080)
						y_min = 0;

					if(x_min > 1920)
						x_min = 0;

					OVERLAY_mWriteReg(OVERLAY_1, 20, 0 );
					OVERLAY_mWriteReg(OVERLAY_1, 24, 0 );
					OVERLAY_mWriteReg(OVERLAY_1, 28, 0 );
					OVERLAY_mWriteReg(OVERLAY_1, 32, 0 );

					OVERLAY_mWriteReg(FACE_SWAP_0, 16, 0 );
					OVERLAY_mWriteReg(FACE_SWAP_0, 20, 0 );
					OVERLAY_mWriteReg(FACE_SWAP_0, 24, 0 );
					OVERLAY_mWriteReg(FACE_SWAP_0, 28, 0 );

					if(y_max - y_min <= 256 && x_max - x_min <= 256)
					{
						OVERLAY_mWriteReg(FACE_SWAP_0, 16, x_min );
						OVERLAY_mWriteReg(FACE_SWAP_0, 20, x_max );
						OVERLAY_mWriteReg(FACE_SWAP_0, 24, y_min );
						OVERLAY_mWriteReg(FACE_SWAP_0, 28, y_max );
					}

					draw_r = 255;
					draw_b = 255;
					draw_g = 255;
				}

				/*
				xil_printf("CURRENT X MIN IS %u\n", x_min_cur);
				xil_printf("CURRENT X MAX IS %u\n", x_max_cur);
				xil_printf("CURRENT Y MIN IS %u\n", y_min_cur);
				xil_printf("CURRENT Y MAX IS %u\n", y_max_cur);
				xil_printf("ACTUAL X MIN IS %u\n", x_min);
				xil_printf("ACTUAL X MAX IS %u\n", x_max);
				xil_printf("ACTUAL Y MIN IS %u\n", y_min);
				xil_printf("ACTUAL Y MAX IS %u\n", y_max);
				xil_printf("PIXEL INPUT IS %u\n", pixel_in);
				xil_printf("CURRENT STATE IS %u\n", state);
				xil_printf("NEXT STATE IS %u\n", new_state);
				xil_printf("RED VALUE IS %u\n", r);
				xil_printf("GREEN VALUE IS %u\n", g);
				xil_printf("BLUE VALUE IS %u\n", b);
				xil_printf("CURRENT WIDTH IS %u\n", width);
				xil_printf("CURRENT HEIGHT IS %u\n", height);
				xil_printf("R_MAX IS %u\n", r_max);
				xil_printf("G_MIN VALUE IS %u\n", g_min);
				xil_printf("B_MAX VALUE IS %u\n", b_max);*/




				u32 xcoi, ycoi;
				// u32 lineStart = 0;

				//u32 xcoord = (x_min + x_max)/2;
				//u32 ycoord = (y_min + y_max)/2;

				Xil_DCacheFlushRange((unsigned int) pFrames[dispCtrl.curFrame], DEMO_MAX_FRAME);

			}
			break;
		case 'a':
			OVERLAY_mWriteReg(OVERLAY_0, 0, 2);
			OVERLAY_mWriteReg(OVERLAY_0, 20, 250);
			OVERLAY_mWriteReg(OVERLAY_0, 24, 450);
			OVERLAY_mWriteReg(OVERLAY_0, 28, 450);
			OVERLAY_mWriteReg(OVERLAY_0, 32, 670);
			OVERLAY_mWriteReg(OVERLAY_1, 0, 2);
			OVERLAY_mWriteReg(OVERLAY_1, 20, 10);
			OVERLAY_mWriteReg(OVERLAY_1, 24, 200);
			OVERLAY_mWriteReg(OVERLAY_1, 28, 30);
			OVERLAY_mWriteReg(OVERLAY_1, 32, 400);

			/*
			while(1){
				xil_printf("ssssssssssssssssssssssssssssssss\n\r");
				//xil_printf("filterType: %u\n\r", OVERLAY_mReadReg(OVERLAY, 0));
				//xil_printf("xLeft: %u\n\r", OVERLAY_mReadReg(OVERLAY, 20) );
				//xil_printf("xRight: %u\n\r", OVERLAY_mReadReg(OVERLAY, 24) );
				//xil_printf("yTop: %u\n\r", OVERLAY_mReadReg(OVERLAY, 28) );
				//xil_printf("yBott: %u\n\r", OVERLAY_mReadReg(OVERLAY, 32) );

				xil_printf("curX: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 4) );
				xil_printf("curY: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 8) );
				xil_printf("outofFilter: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 12) );
				xil_printf("imgAddress: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 16) );

				xil_printf("isImageLine: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 36) );
				xil_printf("yAct: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 40) );
				xil_printf("yBramwOrg: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 52) );
				xil_printf("if: %u\n\r", OVERLAY_mReadReg(OVERLAY_0, 56) );

			}
			*/
			break;
		case 'q':
			break;
		case 'r':
			locked = XGpio_DiscreteRead(GpioPtr, 2);
			xil_printf("%d", locked);
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			MB_Sleep(50);
		}
	}

	return;
}

void DemoPrintMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("*                ZYBO Video Demo                 *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*Display Resolution: %28s*\n\r", dispCtrl.vMode.label);
	printf("*Display Pixel Clock Freq. (MHz): %15.3f*\n\r", dispCtrl.pxlFreq);
	xil_printf("*Display Frame Index: %27d*\n\r", dispCtrl.curFrame);
	if (videoCapt.state == VIDEO_DISCONNECTED) xil_printf("*Video Capture Resolution: %22s*\n\r", "!HDMI UNPLUGGED!");
	else xil_printf("*Video Capture Resolution: %17dx%-4d*\n\r", videoCapt.timing.HActiveVideo, videoCapt.timing.VActiveVideo);
	xil_printf("*Video Frame Index: %29d*\n\r", videoCapt.curFrame);
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - Change Display Resolution\n\r");
	xil_printf("2 - Change Display Framebuffer Index\n\r");
	xil_printf("3 - Print Blended Test Pattern to Display Framebuffer\n\r");
	xil_printf("4 - Print Color Bar Test Pattern to Display Framebuffer\n\r");
	xil_printf("5 - Start/Stop Video stream into Video Framebuffer\n\r");
	xil_printf("6 - Change Video Framebuffer Index\n\r");
	xil_printf("7 - Grab Video Frame and invert colors\n\r");
	xil_printf("8 - Grab Video Frame and scale to Display resolution\n\r");
	xil_printf("9 - Detect Coloured Blocks\n\r");
	xil_printf("q - Quit\n\r");
	xil_printf("\n\r");
	xil_printf("\n\r");
	xil_printf("Enter a selection:");
}

void DemoChangeRes()
{
	int fResSet = 0;
	int status;
	char userInput = 0;

	/* Flush UART FIFO */
	while (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
		{
			XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
		}

	while (!fResSet)
	{
		DemoCRMenu();




		/* Wait for data on UART */
		while (XUartLite_IsReceiveEmpty(UART_BASEADDR)) // && !fRefresh)
		{}

		/* Store the first character in the UART recieve FIFO and echo it */

		userInput = XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
		xil_printf("%c", userInput);
		status = XST_SUCCESS;
		switch (userInput)
		{
		case '1':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_640x480);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '2':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_800x600);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '3':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1280x720);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '4':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1280x1024);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '5':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1920x1080);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case 'q':
			fResSet = 1;
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			MB_Sleep(50);
		}
		if (status == XST_DMA_ERROR)
		{
			xil_printf("\n\rWARNING: AXI VDMA Error detected and cleared\n\r");
		}
	}
}

void DemoCRMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("*                ZYBO Video Demo                 *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*Current Resolution: %28s*\n\r", dispCtrl.vMode.label);
	printf("*Pixel Clock Freq. (MHz): %23.3f*\n\r", dispCtrl.pxlFreq);
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - %s\n\r", VMODE_640x480.label);
	xil_printf("2 - %s\n\r", VMODE_800x600.label);
	xil_printf("3 - %s\n\r", VMODE_1280x720.label);
	xil_printf("4 - %s\n\r", VMODE_1280x1024.label);
	xil_printf("5 - %s\n\r", VMODE_1920x1080.label);
	xil_printf("q - Quit (don't change resolution)\n\r");
	xil_printf("\n\r");
	xil_printf("Select a new resolution:");
}

void DemoInvertFrame(u8 *srcFrame, u8 *destFrame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 lineStart = 0;
	for(ycoi = 0; ycoi < height; ycoi++)
	{
		for(xcoi = 0; xcoi < (width * 3); xcoi+=3)
		{
			destFrame[xcoi + lineStart] = ~srcFrame[xcoi + lineStart];         //Red
			destFrame[xcoi + lineStart + 1] = ~srcFrame[xcoi + lineStart + 1]; //Blue
			destFrame[xcoi + lineStart + 2] = ~srcFrame[xcoi + lineStart + 2]; //Green
		}
		lineStart += stride;
	}
	/*
	 * Flush the framebuffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 */
	Xil_DCacheFlushRange((unsigned int) destFrame, DEMO_MAX_FRAME);
}


/*
 * Bilinear interpolation algorithm. Assumes both frames have the same stride.
 */
void DemoScaleFrame(u8 *srcFrame, u8 *destFrame, u32 srcWidth, u32 srcHeight, u32 destWidth, u32 destHeight, u32 stride)
{
	float xInc, yInc; // Width/height of a destination frame pixel in the source frame coordinate system
	float xcoSrc, ycoSrc; // Location of the destination pixel being operated on in the source frame coordinate system
	float x1y1, x2y1, x1y2, x2y2; //Used to store the color data of the four nearest source pixels to the destination pixel
	int ix1y1, ix2y1, ix1y2, ix2y2; //indexes into the source frame for the four nearest source pixels to the destination pixel
	float xDist, yDist; //distances between destination pixel and x1y1 source pixels in source frame coordinate system

	int xcoDest, ycoDest; // Location of the destination pixel being operated on in the destination coordinate system
	int iy1; //Used to store the index of the first source pixel in the line with y1
	int iDest; //index of the pixel data in the destination frame being operated on

	int i;

	xInc = ((float) srcWidth - 1.0) / ((float) destWidth);
	yInc = ((float) srcHeight - 1.0) / ((float) destHeight);

	ycoSrc = 0.0;
	for (ycoDest = 0; ycoDest < destHeight; ycoDest++)
	{
		iy1 = ((int) ycoSrc) * stride;
		yDist = ycoSrc - ((float) ((int) ycoSrc));

		/*
		 * Save some cycles in the loop below by presetting the destination
		 * index to the first pixel in the current line
		 */
		iDest = ycoDest * stride;

		xcoSrc = 0.0;
		for (xcoDest = 0; xcoDest < destWidth; xcoDest++)
		{
			ix1y1 = iy1 + ((int) xcoSrc) * 3;
			ix2y1 = ix1y1 + 3;
			ix1y2 = ix1y1 + stride;
			ix2y2 = ix1y1 + stride + 3;

			xDist = xcoSrc - ((float) ((int) xcoSrc));

			/*
			 * For loop handles all three colors
			 */
			for (i = 0; i < 3; i++)
			{
				x1y1 = (float) srcFrame[ix1y1 + i];
				x2y1 = (float) srcFrame[ix2y1 + i];
				x1y2 = (float) srcFrame[ix1y2 + i];
				x2y2 = (float) srcFrame[ix2y2 + i];

				/*
				 * Bilinear interpolation function
				 */
				destFrame[iDest] = (u8) ((1.0-yDist)*((1.0-xDist)*x1y1+xDist*x2y1) + yDist*((1.0-xDist)*x1y2+xDist*x2y2));
				iDest++;
			}
			xcoSrc += xInc;
		}
		ycoSrc += yInc;
	}

	/*
	 * Flush the framebuffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 */
	Xil_DCacheFlushRange((unsigned int) destFrame, DEMO_MAX_FRAME);

	return;
}

void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride, int pattern)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
	u32 wCurrentInt;
	double fRed, fBlue, fGreen, fColor;
	u32 xLeft, xMid, xRight, xInt;
	u32 yMid, yInt;
	double xInc, yInc;


	switch (pattern)
	{
	case DEMO_PATTERN_0:

		xInt = width / 4; //Four intervals, each with width/4 pixels
		xLeft = xInt * 3;
		xMid = xInt * 2 * 3;
		xRight = xInt * 3 * 3;
		xInc = 256.0 / ((double) xInt); //256 color intensities are cycled through per interval (overflow must be caught when color=256.0)

		yInt = height / 2; //Two intervals, each with width/2 lines
		yMid = yInt;
		yInc = 256.0 / ((double) yInt); //256 color intensities are cycled through per interval (overflow must be caught when color=256.0)

		fBlue = 0.0;
		fRed = 256.0;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			/*
			 * Convert color intensities to integers < 256, and trim values >=256
			 */
			wRed = (fRed >= 256.0) ? 255 : ((u8) fRed);
			wBlue = (fBlue >= 256.0) ? 255 : ((u8) fBlue);
			iPixelAddr = xcoi;
			fGreen = 0.0;
			for(ycoi = 0; ycoi < height; ycoi++)
			{

				wGreen = (fGreen >= 256.0) ? 255 : ((u8) fGreen);
				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				if (ycoi < yMid)
				{
					fGreen += yInc;
				}
				else
				{
					fGreen -= yInc;
				}

				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}

			if (xcoi < xLeft)
			{
				fBlue = 0.0;
				fRed -= xInc;
			}
			else if (xcoi < xMid)
			{
				fBlue += xInc;
				fRed += xInc;
			}
			else if (xcoi < xRight)
			{
				fBlue -= xInc;
				fRed -= xInc;
			}
			else
			{
				fBlue += xInc;
				fRed = 0;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
		break;
	case DEMO_PATTERN_1:

		xInt = width / 7; //Seven intervals, each with width/7 pixels
		xInc = 256.0 / ((double) xInt); //256 color intensities per interval. Notice that overflow is handled for this pattern.

		fColor = 0.0;
		wCurrentInt = 1;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{

			/*
			 * Just draw white in the last partial interval (when width is not divisible by 7)
			 */
			if (wCurrentInt > 7)
			{
				wRed = 255;
				wBlue = 255;
				wGreen = 255;
			}
			else
			{
				if (wCurrentInt & 0b001)
					wRed = (u8) fColor;
				else
					wRed = 0;

				if (wCurrentInt & 0b010)
					wBlue = (u8) fColor;
				else
					wBlue = 0;

				if (wCurrentInt & 0b100)
					wGreen = (u8) fColor;
				else
					wGreen = 0;
			}

			iPixelAddr = xcoi;

			for(ycoi = 0; ycoi < height; ycoi++)
			{
				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}

			fColor += xInc;
			if (fColor >= 256.0)
			{
				fColor = 0.0;
				wCurrentInt++;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
		break;
	default :
		xil_printf("Error: invalid pattern passed to DemoPrintTest");
	}
}

void DemoISR(void *callBackRef, void *pVideo)
{
	char *data = (char *) callBackRef;
	*data = 1; //set fRefresh to 1
}
