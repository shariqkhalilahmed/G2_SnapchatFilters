FPGA Snapchat Filters
=====================

About
-----
The goal of this project is to develop a real-time video input-output system which implments basic filters comprising of overlay drawings, face replacement and face swapping akin to filters on the popular mobile application 'Snapchat'. The project employs the use of a Nexys Video Board with an FPGA to fulfill its real-time requirement and is controlled using an Android App (https://github.com/shariqkhalilahmed/FPGASnapChatBluetooth) connected wirelessly over bluetooth. Faces are identified in the video frame using glasses with uniquely coloured tips which can be detected in real-time by the system.

Usage
-----

*Note: While the hardware functions correctly, integration and control on the software side (for microblaze) is incomplete but individual IP code as well as bluetooth interface should work from the C source code provided*

To use this project, follow these steps:  

1. Clone/Download the respository
   
2. Go to src/proj/ and open hdmi.xpr in Vivado 2016.2 (Other version of Vivado may work but have not been verified by us) 
   
3. Ensure IP repositories 'src/gr_ip' and 'src/repo' are linked in Tools > Project Settings > IP > Repository Manager

4. Generate bitstream (Vivado wil ask to run Synthesis and Implementation as well at this point)

5. Export hardware for use in SDK: File > Export > Export Hardware
	*Note: Insure *"Include bitstream"* is checked in the export hardware dialog*

6. Launch SDK: File > Launch SDK

7. Ensure that video)demo is built using latest hardware platform (which you exported) and Board Support Package (BSP):
	- Right click on videodemo project and head to Properties > Project References
	- Check which platform and BSP is used
	- In Project Explorer, check if platform is built recently in system.hdf file (timestamp visible)
	- In Project Explorer, check if bsp is generated using platform in system.mss (if not, create File > New > BSP with correct platform in popup dialog)

8. Plug in Nexys Video Board via USB and turn on (Optional: Connect PMOD BT2 to JA PMOD Header on board)

9. Flash imported hardware: Xilinx Tools > Flash FPGA > Program (Ensure platform being flashed is current platform)

10. PLug in UART USB for Nexys Video Board

11. Select Run > Run Configurations:
	- In Target Setup, ensure correct Hardware Platform
	- In STDIO Connection, ensure Port is highest COM port and BAUD rate is 115200

12. Press Run (Note: overall C code provided in github is incomplete and therefore faulty but usage of IPs in C code is correct)

13. See menu in Terminal (Press '9' for project to work)

13. Use Android bluetooth app on github here to connect and control filters: https://github.com/shariqkhalilahmed/FPGASnapChatBluetooth


Respository Structure
---------------------

| Directory           | Description                                                |
|-------------------- |------------------------------------------------------------|
| `docs/`             | Documents pertaining to design and hurdles of project      |
| `src/`              | All files related to project implementation including .coe file for memory intialization |
| `src/proj`          | Vivado project and associated files excluding IPs source but including SDK workspace (hdmi.sdk) |
| `src/proj/hdmi.sdk` | Contains videodemo SDK project with code intended for microblaze processor   |
| `src/g2_ip`         | Managed IP repository for custom IPs written by our team (G2) including block_detection, overlay etc. |
| `src/repo/`         | Contains custom IPs from Digilient including RGBtoDVI etc. |



Authors
-------
- Shariq Khalil Ahmed
- Kazi Sudipto Arif
- Shirley Yang

Acknowledgements
----------------
- The design utilizes the Nexys Video HDMI Demo as a base which can be found here: https://reference.digilentinc.com/learn/programmable-logic/tutorials/nexys-video-hdmi-demo/start
- Since Nexys Video HDMI Demo uses Xilinx Microblaze and LogiCore IPs as well as Digilent's own RGBtoDVI and DVItoRGB IPs, our design by default makes use of these
- The software developed for the microblaze processor is based on the videodemo project from the Nexys Video HDMI Demo as well
