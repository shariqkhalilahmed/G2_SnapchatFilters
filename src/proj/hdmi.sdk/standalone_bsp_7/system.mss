
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 5.5
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER stdin = axi_uartlite_0
 PARAMETER stdout = axi_uartlite_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.5
 PARAMETER HW_INSTANCE = microblaze_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = axi_dynclk_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.1
 PARAMETER HW_INSTANCE = axi_gpio_video
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 4.1
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = axi_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = axi_uartlite_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axivdma
 PARAMETER DRIVER_VER = 6.1
 PARAMETER HW_INSTANCE = axi_vdma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = block_detector
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = block_detector_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = block_detector
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = block_detector_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = block_detector
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = block_detector_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = block_detector
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = block_detector_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = draw
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = draw_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = face_swap
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = face_swap_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.5
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.1
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.1
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig_7series
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = mig_7series_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = overlay
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = overlay_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = overlay
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = overlay_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = vtc
 PARAMETER DRIVER_VER = 7.1
 PARAMETER HW_INSTANCE = v_tc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = vtc
 PARAMETER DRIVER_VER = 7.1
 PARAMETER HW_INSTANCE = v_tc_1
END


