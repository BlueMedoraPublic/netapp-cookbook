##
# This attributes file contains all instructions necessary to install API Services or SLM
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Create a /tmp/netapp-media folder to work from
directory node[:netapp][:api][:tmp] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_file "#{node[:netapp][:api][:tmp]}/#{node[:netapp][:api][:media_filename]}" do
  source "file:///#{node[:netapp][:api][:media]}"
  owner 'root'
  group 'root'
  mode '0500'
  action :create_if_missing
end

execute 'Install NetApp API-S/SLM' do
  command "./#{node[:netapp][:api][:media_filename]} -p #{node[:netapp][:api][:password]} -t #{node[:netapp][:api][:port]} -y"
  cwd node[:netapp][:api][:tmp]
end

file "#{node[:netapp][:api][:tmp]}/#{node[:netapp][:api][:media_filename]}" do
  action :delete
end

# Delete the /tmp/netapp-media folder
directory node[:netapp][:api][:tmp] do
  owner 'root'
  group 'root'
  mode '0755'
  action :delete
end