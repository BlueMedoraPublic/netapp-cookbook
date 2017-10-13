##
# This attributes file contains all instructions necessary to install the prerequisites for the other recipies
# Authors:
#   Dylan Myers
# Copyright 2017 Blue Medora
##

# Add & enable the MySQL 5.6 Community Repository
include_recipe node[:netapp][:mysql][:repo]

# Add & enable the EPEL repository
include_recipe 'yum-epel::default'

# Enable the RHEL 7 Oracle Java subscription repository
# subscription-manager repos --enable rhel-7-server-thirdparty-oracle-java-rpms
# This requires fixes to the redhat_subscription_manager cookbook first
