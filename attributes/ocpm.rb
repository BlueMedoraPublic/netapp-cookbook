##
# This attributes file contains all attributes necessary to install On Command Performance Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Maintenance User
default[:netapp][:ocpm][:username] = "maint"
default[:netapp][:ocpm][:password] = "some_password"
  
# Location of the installer media
default[:netapp][:ocpm][:media_name] = 'OnCommandPerformanceManager-7.1.el7.zip'
default[:netapp][:ocpm][:media_path] = '/path/to/'
default[:netapp][:ocpm][:media] = "#{node[:netapp][:ocpm][:media_path]}#{node[:netapp][:ocpm][:media_name]}"

# Order of these packages is important
default[:netapp][:ocpm][:pkgs] = [ 'ocie-serverbase', 'netapp-application-server', 'netapp-platform-base', 'ocie-server', 'ocie-au', 'ocf-server', 'netapp-opm' ]
