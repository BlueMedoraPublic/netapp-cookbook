##
# This attributes file contains all attributes necessary to install On Command Unified Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Maintenance User
default[:netapp][:ocum][:username] = "maint"
default[:netapp][:ocum][:password] = "some_password"
  
# Port
default[:netapp][:ocum][:port] = "8443"
default[:netapp][:ocum]
