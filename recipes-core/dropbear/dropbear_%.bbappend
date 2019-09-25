#
# With MCS_DROP_NO_START set to "1" Dropbear will not be setup for auto-start in 
#   init run levels 3, 4 & 5
#
# In this example 

INITSCRIPT_PARAMS = " \
             ${@base_conditional('MCS_DROPBEAR_NO_START', '1', 'start 10 2 . stop 20 0 1 6 .', \ 
                'start 10 2 3 4 5 . stop 20 0 1 6 .', d)} \
             "

