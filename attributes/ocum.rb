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
  
# Location of the installer media
default[:netapp][:ocum][:media_name] = 'OnCommandUnifiedManager-rhel7-7.1'
default[:netapp][:ocum][:media_path] = "/path/to/"
default[:netapp][:ocum][:media] = "#{node[:netapp][:ocum][:media_path]}#{node[:netapp][:ocum][:media_name]}"

default[:netapp][:ocum]
