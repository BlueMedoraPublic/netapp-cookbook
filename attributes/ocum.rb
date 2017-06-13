##
# This attributes file contains all attributes necessary to install On Command Unified Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Maintenance User
default[:netapp][:ocum][:username] = "maint"
default[:netapp][:ocum][:password] = "some_password"
  
# Location of the installer media
default[:netapp][:ocum][:media_name] = 'OnCommandUnifiedManager-rhel7-7.1.zip'
default[:netapp][:ocum][:media_path] = "/path/to/"
default[:netapp][:ocum][:media] = "#{node[:netapp][:ocum][:media_path]}#{node[:netapp][:ocum][:media_name]}"

# Order of these packages is important
default[:netapp][:ocum][:pkgs] = [ 'ocie-serverbase', 'netapp-application-server', 'netapp-platform-base', 'ocie-server', 'ocie-au', 'node', 'rp', 'netapp-ocum' ]
