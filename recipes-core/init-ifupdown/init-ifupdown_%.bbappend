#
# With MCS_NETWORKING_NO_START set to "1" networking will not be setup for auto-start in 
#   init run levels 3, 4 & 5
#

python() {
   var_value = d.getVar('MCS_NETWORKING_NO_START', True)
   if var_value:
        d.setVar('INITSCRIPT_PARAMS', 'start 03 2 . stop 80 0 1 6 .')  
}

