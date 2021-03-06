`timescale 1ps / 1ps



module AXI_DDR2_test(

    );

// HELPER
        function integer clogb2;
            input integer value;
            integer     i;
            begin
                clogb2 = 0;
                for(i = 0; 2**i < value; i = i + 1)
                clogb2 = i + 1;
            end
        endfunction
        
    localparam    tries = 4;
    localparam    sword = 32;
    
    localparam    impl = 0;
    localparam    syncing = 0;
    
    // Autogen localparams
    
    reg     CLK = 1'b0;
    reg         RST;
    
    // AXI4-lite master memory interfaces
    
    reg         axi_awvalid;
    wire        axi_awready;
    reg [sword-1:0] axi_awaddr;
    reg [3-1:0]     axi_awprot;
    
    reg         axi_wvalid;
    wire        axi_wready;
    reg [sword-1:0] axi_wdata;
    reg [4-1:0]     axi_wstrb;
    
    wire        axi_bvalid;
    reg         axi_bready;
    
    reg         axi_arvalid;
    wire        axi_arready;
    reg [sword-1:0] axi_araddr;
    reg [3-1:0]     axi_arprot;
    
    wire        axi_rvalid;
    reg         axi_rready;
    wire [sword-1:0] axi_rdata;
    
    // DDR2 interface
    wire [12:0] ddr2_addr;
    wire [2:0]  ddr2_ba;
    wire        ddr2_ras_n;
    wire        ddr2_cas_n;
    wire        ddr2_we_n;
    wire [0:0]  ddr2_ck_p;
    wire [0:0]  ddr2_ck_n;
    wire [0:0]  ddr2_cke;
    wire [0:0]  ddr2_cs_n;
    wire [1:0]  ddr2_dm;
    wire [0:0]  ddr2_odt;
    wire [15:0] ddr2_dq;
    wire [1:0]  ddr2_dqs_p;
    wire [1:0]  ddr2_dqs_n;
        
        //integer     fd1, tmp1, ifstop;
        integer PERIOD = 5000 ;
        integer i, error;
        
        
        AXI_DDR2 inst_AXI_DDR2(
            .CLK(CLK),
            .RST(RST),
            .axi_awvalid(axi_awvalid),
            .axi_awready(axi_awready),
            .axi_awaddr(axi_awaddr),
            .axi_awprot(axi_awprot),
            .axi_wvalid(axi_wvalid),
            .axi_wready(axi_wready),
            .axi_wdata(axi_wdata),
            .axi_wstrb(axi_wstrb),
            .axi_bvalid(axi_bvalid),
            .axi_bready(axi_bready),
            .axi_arvalid(axi_arvalid),
            .axi_arready(axi_arready),
            .axi_araddr(axi_araddr),
            .axi_arprot(axi_arprot),
            .axi_rvalid(axi_rvalid),
            .axi_rready(axi_rready),
            .axi_rdata(axi_rdata),
            .ddr2_cas_n          (ddr2_cas_n),       
            .ddr2_ras_n          (ddr2_ras_n),       
            .ddr2_we_n           (ddr2_we_n), 
            .ddr2_addr           (ddr2_addr[12:0]),  
            .ddr2_ba             (ddr2_ba[2:0]),     
            .ddr2_ck_n           (ddr2_ck_n[0:0]),   
            .ddr2_ck_p           (ddr2_ck_p[0:0]),   
            .ddr2_cke            (ddr2_cke[0:0]),    
            .ddr2_cs_n           (ddr2_cs_n[0:0]),   
            .ddr2_dm             (ddr2_dm[1:0]),     
            .ddr2_odt            (ddr2_odt[0:0]),     
            .ddr2_dq             (ddr2_dq[15:0]),    
            .ddr2_dqs_n          (ddr2_dqs_n[1:0]),  
            .ddr2_dqs_p          (ddr2_dqs_p[1:0]) 
        );
        
        ddr2 inst_ddr2
            (
                .ck(ddr2_ck_p),
                .ck_n(ddr2_ck_n),
                .cke(ddr2_cke),
                .cs_n(ddr2_cs_n),
                .ras_n(ddr2_ras_n),
                .cas_n(ddr2_cas_n),
                .we_n(ddr2_we_n),
                .dm_rdqs(ddr2_dm),
                .ba(ddr2_ba),
                .addr(ddr2_addr),
                .dq(ddr2_dq),
                .dqs(ddr2_dqs_p),
                .dqs_n(ddr2_dqs_n),
                //.rdqs_n(open),
                .odt(ddr2_odt)
            );
        
        always
        begin #(PERIOD/2) CLK = ~CLK; end 
    
        task aexpect;
            input [sword-1:0] av, e;
            begin
             if (av == e)
                $display ("TIME=%t." , $time, " Actual value of trans=%b, expected is %b. MATCH!", av, e);
             else
              begin
                $display ("TIME=%t." , $time, " Actual value of trans=%b, expected is %b. ERROR!", av, e);
                error = error + 1;
              end
            end
        endtask
        
        reg [63:0] xorshift64_state = 64'd88172645463325252;
    
        task xorshift64_next;
            begin
                // see page 4 of Marsaglia, George (July 2003). "Xorshift RNGs". Journal of Statistical Software 8 (14).
                xorshift64_state = xorshift64_state ^ (xorshift64_state << 13);
                xorshift64_state = xorshift64_state ^ (xorshift64_state >>  7);
                xorshift64_state = xorshift64_state ^ (xorshift64_state << 17);
            end
        endtask
    
    
        initial begin
            //$sdf_annotate("AXI_SRAM.sdf",AXI_SRAM);
            CLK     = 1'b0;
            RST     = 1'b0;
            error = 0;
            axi_awvalid = 1'b0;
            axi_wvalid = 1'b0;
            axi_bready = 1'b1;
            axi_arvalid = 1'b0;
            axi_rready = 1'b1;
            axi_awaddr = {sword{1'b0}};
            axi_awprot = {3{1'b0}};
            axi_wdata = {sword{1'b0}};
            axi_wstrb = 4'b1111;
            axi_araddr = {sword{1'b0}};
            axi_arprot = {3{1'b0}};
            #101000;
            RST     = 1'b1;
			
			//#52500000;
            // WRITTING AND READING TEST
            // BASICALLY, WHAT I READ, IS WHAT I WRITE
            for(i = 0; i < tries; i = i+1) begin
                #(PERIOD*8);
                // WRITTING TEST
                axi_awvalid = 1'b1;
				axi_awaddr = i<<2;//xorshift64_state[sword*2-1:sword];
                //#PERIOD;
                while(!axi_awready) begin
                    #PERIOD; 
                end
                while(axi_awready) begin
                    #PERIOD; 
                end
                axi_awvalid = 1'b0;
                axi_wvalid = 1'b1;
                axi_wdata = xorshift64_state[sword-1:0];
                while(!axi_wready) begin
                    #PERIOD; 
                end
                while(axi_wready) begin
                    #PERIOD; 
                end
                axi_wvalid = 1'b0;
                while(!axi_bvalid) begin
                    #PERIOD; 
                end
                while(axi_bvalid) begin
                    #PERIOD; 
                end
                //axi_bready = 1'b1;
                #PERIOD; 
                axi_awvalid = 1'b0;
                axi_wvalid = 1'b0;
                //axi_bready = 1'b0;
                
                // WRITTING TEST
                axi_arvalid = 1'b1;
				axi_araddr = i<<2;//xorshift64_state[sword*2-1:sword];
                //#PERIOD;
                while(!axi_arready) begin
                    #PERIOD; 
                end
                while(axi_arready) begin
                    #PERIOD; 
                end
                axi_arvalid = 1'b0;
                while(!axi_rvalid) begin
                    #PERIOD; 
                end
                while(axi_rvalid) begin
                    #PERIOD; 
                end
                //axi_rready = 1'b1;
                #PERIOD; 
                axi_arvalid = 1'b0;
                //axi_rready = 1'b0;
				
                aexpect(axi_rdata, xorshift64_state[sword-1:0]);
                xorshift64_next;
            end
            $timeformat(-9,0,"ns",7);
            #(PERIOD*8) if (error == 0)
                        $display("All match");
                    else
                        $display("Mismatches = %d", error);
            $finish;
        end
    
    endmodule
