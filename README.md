netapp Cookbook
===============
This cookbook will install and configure the following NetApp software for usage:
*NetApp On Command API Services*
*NetApp On Command Service Level Manager* (API Services Replacement)
*NetApp On Command Unified Manager*
*NetApp On Command Performance Manager*

Requirements
------------
This cookbook depends on the yum-mysql-community cookbook in order to enable the correct MySQL repositories

**Prerequisites:** yum-epel must be in the run list before this cookbook in order to enable the primary epel repository.
Other epel repositories, such as debuginfo and source are at the discretion of the user.

**Compatibility:** Red Hat 7.x Only

Attributes
----------
#### netapp::default
There are no default attributes.

#### netapp::api-slm


#### netapp::ocpm


#### netapp::ocum


Usage
-----
#### netapp::default
This recipe just runs the api-slm recipe, as that is the most commonly used.

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

License: This software is licensed under: ???