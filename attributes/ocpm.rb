##
# This attributes file contains all attributes necessary to install On Command Performance Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Maintenance User
default[:netapp][:ocpm][:username] = "maint"
default[:netapp][:ocpm][:password] = "some_password"
  
# Port
default[:netapp][:ocpm][:port] = "8443"
  
# Location of the installer media
default[:netapp][:ocpm][:media_name] = 'OnCommandPerformanceManager-7.1.el7.zip'
default[:netapp][:ocpm][:media] = "/path/to/#{node[:netapp][:ocpm][:media_name]}"

default[:netapp][:ocpm]
