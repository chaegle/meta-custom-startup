#
# With MCS_NETWORKMANAGER_NO_START set to "1" NetworkManager will not be setup for auto-start in 
#   init run levels 3, 4 & 5
#
# In this example we are using an anonymous python function

EXTRA_OECONF:append = " --disable-introspection"

python() {
   var_value = d.getVar('MCS_NETWORKMANAGER_NO_START', True)
   if var_value:
        d.setVar('INITSCRIPT_PARAMS', 'start 03 2 . stop 80 0 1 6 .')  
}

