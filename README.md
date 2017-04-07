netapp Cookbook
===============
This cookbook will install and configure the following NetApp software for usage:

*NetApp On Command API Services* or *NetApp On Command Service Level Manager* (API Services Replacement)

*NetApp On Command Unified Manager*

*NetApp On Command Performance Manager*

Requirements
------------
This cookbook depends on the yum-mysql-community, yum-epel, and redhat_subscription_manager cookbooks in order to enable the correct prerequisite repositories

**Prerequisites:** The default recipe of this cookbook handles all calls to dependency cookbooks to set things up correctly

**Compatibility:** Red Hat 7.x Only

Attributes
----------
#### netapp::default


#### netapp::api-slm


#### netapp::ocpm


#### netapp::ocum


Usage
-----
#### netapp::default
Performs default actions needed for all other recipes, such as enabling the MySQL 5.6 repository

#### netapp::api-slm
This recipe installs On Command API Services or Service Level Manager.
Please see the attributes above for the settings applicable to this recipe.

#### netapp::ocpm
This recipe installs On Command Performance Manager.
Please see the attributes above for the settings applicable to this recipe.

#### netapp::ocum
This recipe installs On Command Unified Manager.
Please see the attributes above for the settings applicable to this recipe.
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
  Dylan Myers <https://github.com/Dylan-M>

License: See LICENSE