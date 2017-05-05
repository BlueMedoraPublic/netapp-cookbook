##
# This recipe file contains all instructions necessary to install On Command Unified Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

remote_file node[:netapp][:ocum][:media_name] do
  source node[:netapp][:ocum][:media]
  path "/tmp/#{node[:netapp][:ocum][:media_name]}"
  action :create
end

execute "Unzip #{node[:netapp][:ocum][:media_name]}" do
  command "unzip /tmp/#{node[:netapp][:ocum][:media_name]} -d ocum"
  cwd '/tmp'
  not_if { ::File.exist?('/tmp/ocum') }
end

yum_package Dir['/tmp/ocum/*.rpm']