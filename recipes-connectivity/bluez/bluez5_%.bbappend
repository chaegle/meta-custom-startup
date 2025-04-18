#
# With MCS_BLUETOOTH_NO_START set to "1" Bluetooth will not be setup for auto-start in 
#   init run levels 3, 4 & 5
#
# In this example we are using a Python oe.utils.conditional function
#


INITSCRIPT_PARAMS = " \
             ${@oe.utils.conditional('MCS_BLUETOOTH_NO_START', '1', 'start 20 2 . stop 20 0 1 6 .', \
                'start 20 2 3 4 5 . stop 20 0 1 6 .', d)} \
             "
INITSCRIPT_PARAMS_${PN}-init = " \ 
             ${@oe.utils.conditional('MCS_BLUETOOTH_NO_START', '1', 'start 19 2 . stop 21 0 1 6 .', \
                'start 19 2 3 4 5 . stop 20 0 1 6 .', d)} \
             "

