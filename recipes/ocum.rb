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

# Install local RPMs that were unzipped above
# Using Dir.glob with wildcard so we don't have to track version anywhere other than
# in the media_name attribute
node[:netapp][:ocum][:pkgs].each do |pkg|
  yum_package pkg do
    source "/tmp/ocum/#{pkg}"
  end
end

# Delete extraneous install files
directory '/tmp/ocum' do
  recursive true
  action :delete
end
file "/tmp/#{node[:netapp][:ocum][:media_name]}" do
  action :delete
end