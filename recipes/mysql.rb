##
# This recipe file contains all instructions necessary to install the MySQL dependency for NetApp
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Install a specific MySQL Dependency
# For this: https://community.netapp.com/t5/OnCommand-Storage-Management-Software-Discussions/API-Service-1-2-install-problem/m-p/130306/highlight/true#M23535
package 'mysql-community-server' do
  version '5.6.35-2.el7'
  allow_downgrade true
end