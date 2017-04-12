
`timescale 1 ns / 1 ps

	module overlay_v1_0 #
	(
		// Users to add parameters here
        parameter integer BRAM_ADDR_WIDTH=16,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7,

		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 24,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 24,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
        //BRAM
        input [23:0] bram_data,
        output [BRAM_ADDR_WIDTH-1:0] bram_addr,
        output bram_en,
        
        output [10:0] xAct_out,
        output [10:0] yAct_out,
        output [10:0] xBram_out,
        output [20:0] wActxBram_out,
        output [20:0] xActwOrg_out,
        output outOfFilter,
        output isImageLine,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire s00_axis_tuser,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output m00_axis_tuser,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);
	
	assign xAct_out[10:0] = xAct[10:0];
	assign yAct_out[10:0] = yAct[10:0];
	assign xBram_out[10:0] = xBram[10:0];
	assign wActxBram_out[20:0] = wActxBram_out[20:0];
	assign xActwOrg_out[20:0] = xActwOrg[20:0];
	
	wire [31:0] xAct;
    wire [31:0] yAct;
    wire [31:0] xBram;
    wire [31:0] wActxBram;
    wire [31:0] xActwOrg;
	
    // Instantiation of Axi Bus Interface S00_AXI
	overlay_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) overlay3_v1_0_S00_AXI_inst (
	    .ap_clk(ap_clk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TVALID(inStream_TVALID),
        .inStream_TUSER(inStream_TUSER),
            
        .outStream_TDATA(outStream_TDATA),
        .outStream_TVALID(outStream_TVALID),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TUSER(outStream_TUSER),
            
        .bram_data(bram_data),
        .bram_addr(bram_addr),
        .bram_en(bram_en),
        
        .xAct(xAct),
        .yAct(yAct),
        .xBram(xBram),
        .wActxBram(wActxBram),
        .xActwOrg(xActwOrg),
        .outOfFilter(outOfFilter),
        .isImageLine(isImageLine),
        
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);
/*
// Instantiation of Axi Bus Interface S00_AXIS
	overlay3_v1_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) overlay3_v1_0_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	overlay3_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) overlay3_v1_0_M00_AXIS_inst (
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);
*/
	// Add user logic here
    //////////////////////////////////////////////////////////////////////////////
        //== Assign input & output ==
        wire   ap_clk;
        assign m00_axis_aresetn = s00_axis_aresetn;
        assign ap_clk = s00_axis_aclk;
        
        //Stream in
        wire  [C_S00_AXIS_TDATA_WIDTH-1:0] inStream_TDATA;
        wire   inStream_TREADY;
        wire  inStream_TLAST;
        wire   inStream_TVALID;
        wire   inStream_TUSER;
        
        assign inStream_TDATA = s00_axis_tdata;
        assign inStream_TREADY = s00_axis_tready;
        assign inStream_TLAST = s00_axis_tlast;
        assign inStream_TVALID = s00_axis_tvalid;
        assign inStream_TUSER= s00_axis_tuser;
        
        //Stream out
        wire  [C_S00_AXIS_TDATA_WIDTH-1:0] outStream_TDATA;
        wire   outStream_TVALID;
        wire   outStream_TLAST;
        wire   outStream_TREADY;
        wire   outStream_TUSER;
        wire   outOfFilter;
        
        assign m00_axis_tdata = outStream_TDATA;
        assign m00_axis_tvalid = outStream_TVALID;
        assign m00_axis_tlast = outStream_TLAST;
        assign m00_axis_tready = outStream_TREADY;
        assign m00_axis_tuser = outStream_TUSER;
        
    //////////////////////////////////////////////////////////////////////////////
	// User logic ends

endmodule
