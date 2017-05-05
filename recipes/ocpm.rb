##
# This recipe file contains all instructions necessary to install On Command Performance Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

remote_file node[:netapp][:ocpm][:media_name] do
  source node[:netapp][:ocpm][:media]
  path "/tmp/#{node[:netapp][:ocpm][:media_name]}"
  action :create
end

execute "Unzip #{node[:netapp][:ocpm][:media_name]}" do
  command "unzip /tmp/#{node[:netapp][:ocpm][:media_name]} -d ocpm"
  cwd '/tmp'
  not_if { ::File.exist?('/tmp/ocpm') }
end

yum_package Dir['/tmp/ocpm/*.rpm']