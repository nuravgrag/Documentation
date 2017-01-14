# TCL File Generated by Component Editor 13.0dp
# Wed Jul 24 15:25:47 CST 2013
# DO NOT MODIFY


# 
# SEG7_IF "SEG7_IF" v1.0
#  2013.07.24.15:25:47
# 
# 

# 
# request TCL package from ACDS 13.0
# 
package require -exact qsys 13.0


# 
# module SEG7_IF
# 
set_module_property DESCRIPTION ""
set_module_property NAME SEG7_IF
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Terasic Technologies Inc./"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME SEG7_IF
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL SEG7_IF
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file SEG7_IF.v VERILOG PATH SEG7_IF.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter SEG7_NUM INTEGER 8 ""
set_parameter_property SEG7_NUM DEFAULT_VALUE 8
set_parameter_property SEG7_NUM DISPLAY_NAME SEG7_NUM
set_parameter_property SEG7_NUM TYPE INTEGER
set_parameter_property SEG7_NUM UNITS None
set_parameter_property SEG7_NUM ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SEG7_NUM DESCRIPTION ""
set_parameter_property SEG7_NUM AFFECTS_GENERATION false
set_parameter_property SEG7_NUM HDL_PARAMETER true
add_parameter ADDR_WIDTH INTEGER 3 ""
set_parameter_property ADDR_WIDTH DEFAULT_VALUE 3
set_parameter_property ADDR_WIDTH DISPLAY_NAME ADDR_WIDTH
set_parameter_property ADDR_WIDTH TYPE INTEGER
set_parameter_property ADDR_WIDTH UNITS None
set_parameter_property ADDR_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ADDR_WIDTH DESCRIPTION ""
set_parameter_property ADDR_WIDTH AFFECTS_GENERATION false
set_parameter_property ADDR_WIDTH HDL_PARAMETER true
add_parameter DEFAULT_ACTIVE INTEGER 1 ""
set_parameter_property DEFAULT_ACTIVE DEFAULT_VALUE 1
set_parameter_property DEFAULT_ACTIVE DISPLAY_NAME DEFAULT_ACTIVE
set_parameter_property DEFAULT_ACTIVE TYPE INTEGER
set_parameter_property DEFAULT_ACTIVE UNITS None
set_parameter_property DEFAULT_ACTIVE ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DEFAULT_ACTIVE DESCRIPTION ""
set_parameter_property DEFAULT_ACTIVE AFFECTS_GENERATION false
set_parameter_property DEFAULT_ACTIVE HDL_PARAMETER true
add_parameter LOW_ACTIVE INTEGER 1 ""
set_parameter_property LOW_ACTIVE DEFAULT_VALUE 1
set_parameter_property LOW_ACTIVE DISPLAY_NAME LOW_ACTIVE
set_parameter_property LOW_ACTIVE TYPE INTEGER
set_parameter_property LOW_ACTIVE UNITS None
set_parameter_property LOW_ACTIVE ALLOWED_RANGES -2147483648:2147483647
set_parameter_property LOW_ACTIVE DESCRIPTION ""
set_parameter_property LOW_ACTIVE AFFECTS_GENERATION false
set_parameter_property LOW_ACTIVE HDL_PARAMETER true


# 
# display items
# 


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressAlignment NATIVE
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock_sink
set_interface_property avalon_slave associatedReset clock_sink_reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitStates 0
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave s_address address Input ADDR_WIDTH
add_interface_port avalon_slave s_read read Input 1
add_interface_port avalon_slave s_readdata readdata Output 8
add_interface_port avalon_slave s_write write Input 1
add_interface_port avalon_slave s_writedata writedata Input 8
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end SEG7 export Output SEG7_NUM*8


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink s_clk clk Input 1


# 
# connection point clock_sink_reset
# 
add_interface clock_sink_reset reset end
set_interface_property clock_sink_reset associatedClock clock_sink
set_interface_property clock_sink_reset synchronousEdges DEASSERT
set_interface_property clock_sink_reset ENABLED true
set_interface_property clock_sink_reset EXPORT_OF ""
set_interface_property clock_sink_reset PORT_NAME_MAP ""
set_interface_property clock_sink_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_sink_reset s_reset reset Input 1
