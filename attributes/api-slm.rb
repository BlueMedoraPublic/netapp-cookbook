##
# This attributes file contains all attributes necessary to install API Services or SLM
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Maintenance User
# default[:netapp][:api][:username] = "maint"
default[:netapp][:api][:password] = "SomePassword1!"
  
# Port
default[:netapp][:api][:port] = "8443"

# Media filename
default[:netapp][:api][:media_filename] = 'FileName.bin'

# Media path
default[:netapp][:api][:media_path] = '/some/mount/point/'

# Location of the installer media
default[:netapp][:api][:media] = "#{node[:netapp][:api][:media_path]}#{node[:netapp][:api][:media_filename]}"

# Temporary location
default[:netapp][:api][:tmp] = '/tmp/netapp-media'
