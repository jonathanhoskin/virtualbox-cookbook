# changelog

## Unreleased

## [2.1.1] - 2019-01-03
* ensure apt repo uses amd64 architecture to prevent apt complaints about i386

## [2.1.0] - 2018-07-13
* merging yumbranch into my own dayne/master branch
  * move README changelog entries into CHANGELOG.md and highlight fork
  * Set context in README for new management
* relaxing yum dependancy
* switching to VirtualBox 5.2 for apt repo sources
* _untested_ switch to 5.2.14 for mac and windows
* removing ubuntu 16.10 in favor of 18.04
* removing centos6 and windows from test kitchen
* pointed to Ubuntu/Debian GPG Key URL from VirtualBox instead of short hand key method.

## [2.0.3]
* VirtualBox 5.1.18 as default
* Working test kitchen for Windows 2016 using publicly available Windows 2016
image from @mwrock's [mrock/packer-templates](https://github.com/mwrock/packer-templates). Others should be able to converge & verify for windows systems.
* Updating contact info in metadata 

## [2.0.1]
* update to VirtualBox 5.1 and confirm it works for following in test kitchen
 * ubuntu-16.04, 16.10
 * centos 6.8, 7.2
 * debian 8.6
* convert to inspec tests to verify successful install in above environments

----
Dayne fork from [bradleyd/virtualbox-cookbook](https://github.com/bradleyd/virtualbox-cookbook).
----

## v1.0.4
* Add chefignore

## v1.0.3

* Update `yum` dependency to version 3

## v1.0.2

* Changed libshadow-ruby18 dependency to ruby-shadow gem
* Changed phpVirtualBox password to use "rawpassword" value from data bag
* Added attribute: node['virtualbox']['webportal']['enable-apache2-default-site']
* Fixed config.php installation directory to use node['virtualbox']['webportal']['installdir']

## v1.0.1

* Update install source for phpvirtualbox.

## v1.0

* Use platform_family attribute to expand platform support.
* Use Oracle's VirtualBox package repositories for Debian / RHEL, and
  the Opscode apt/yum cookbook resources accordingly.
* Add Vbox::Helpers module in libraries/.
* Add additional platforms supported
* Add dependencies on required per-platform cookbooks (required for
 Chef 11's chef-solo).

## v0.7.2:

* Update OS X installer to use new pkg format - thanks josephholsten.

## v0.7.0:

* Add Windows support
* No more "open source edition" - extension pack must now be downloaded
  separately from Oracle.
* Optionally install PHP web porta.

## v0.6.0:

* Install via Sun's package archive in Ubuntu
* Optionally install open-source edition from the Ubuntu repository
* Tested in Ubuntu 11.04

## v0.5.0:

* initial version, tested on OSX only

