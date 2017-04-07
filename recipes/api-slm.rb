##
# This attributes file contains all instructions necessary to install API Services or SLM
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

unless ::File.exists?('/opt/netapp/essentials/bin/cert.sh')
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
end

# The below section is a WIP
# Using the node[:netapp][:api][:config] array of HTTP Rest calls to configure the system
# Syntax for these calls is entirely the purview of the end user, but examples are provided
# in attributes/api-slm. By default this array is empty, and will skip iteration.
# If it's populated, the array should be a sub-array that contains the message in JSON and
# the action (such as :post, :get, etc...).
#node[:netapp][:api][:config].each do |httpcall|
#  http_request httpcall[:message] do
#    url "https://localhost:#{node[:netapp][:api][:port]}"
#    message httpcall[:message]
#    action httpcall[:action]
#  end
#end
