##
# This attributes file contains all attributes necessary to install API Services or SLM
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Maintenance User
default[:netapp][:api][:username] = "maint"
default[:netapp][:api][:password] = "some_password"
  
# Port
default[:netapp][:api][:port] = "8443"
default[:netapp][:api]
