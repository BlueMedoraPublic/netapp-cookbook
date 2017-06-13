##
# This recipe file contains all instructions necessary to install On Command Performance Manager
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

include_recipe 'netapp::mysql'

# Grab the zipped media from a file server
# By default this grabs the media as distributed from NetApp in a zip file
remote_file node[:netapp][:ocpm][:media_name] do
  source "file://#{node[:netapp][:ocpm][:media]}"
  path "/tmp/#{node[:netapp][:ocpm][:media_name]}"
  action :create
end

# Unzip the media in a temporary folder
execute "Unzip #{node[:netapp][:ocpm][:media_name]}" do
  command "unzip /tmp/#{node[:netapp][:ocpm][:media_name]} -d ocpm"
  cwd '/tmp'
  not_if { ::File.exist?('/tmp/ocpm') }
end

# Install local RPMs that were unzipped above
# Using Dir.glob with wildcard so we don't have to track version anywhere other than
# in the media_name attribute
node[:netapp][:ocpm][:pkgs].each do |pkg|
  yum_package pkg do
    source Dir.glob("/tmp/ocpm/#{pkg}*.rpm")[0]
  end
end

# Delete extraneous install files
directory '/tmp/ocpm' do
  recursive true
  action :delete
end
file "/tmp/#{node[:netapp][:ocpm][:media_name]}" do
  action :delete
end