##
# This recipe file contains all instructions necessary to install On Command Unified Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Grab the zipped media from a file server
# By default this grabs the media as distributed from NetApp in a zip file
remote_file node[:netapp][:ocum][:media_name] do
  source "file://#{node[:netapp][:ocum][:media]}"
  path "/tmp/#{node[:netapp][:ocum][:media_name]}"
  action :create
end

# Unzip the media in a temporary folder
execute "Unzip #{node[:netapp][:ocum][:media_name]}" do
  command "unzip /tmp/#{node[:netapp][:ocum][:media_name]} -d ocum"
  cwd '/tmp'
  not_if { ::File.exist?('/tmp/ocum') }
end

# Install a specific MySQL Dependency
# For this: https://community.netapp.com/t5/OnCommand-Storage-Management-Software-Discussions/API-Service-1-2-install-problem/m-p/130306/highlight/true#M23535
package 'mysql-community-server' do
  version '5.6.35-2.el7'
  allow_downgrade true
end

# Install local RPMs that were unzipped above
package Dir['/tmp/ocum/*.rpm']