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
ExecStep $xv_path/bin/xelab -wto 6c86aaafb83c4e45a8fc1dd10fd68c91 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot impl_axi_tb_func_synth xil_defaultlib.impl_axi_tb xil_defaultlib.glbl -log elaborate.log
