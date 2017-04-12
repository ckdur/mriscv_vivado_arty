#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim impl_axi_tb_func_synth -key {Post-Synthesis:sim_1:Functional:impl_axi_tb} -tclbatch impl_axi_tb.tcl -log simulate.log
