name             "virtualbox"
# maintainer       "Bradley D Smith"
# maintainer_email "bradleydsmith@gmail.com"
maintainer       "Dayne Broderson"
maintainer_email "broderson@gmail.com"
license          "Apache 2.0"
description      "Installs virtualbox"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "2.1.1"

source_url "https://github.com/dayne/virtualbox-cookbook"
issues_url "https://github.com/dayne/virtualbox-cookbook/issues"

supports 'ubuntu'
supports 'debian'

# Not testing any of these as of v2.1.0 -- clean up later
# %w{centos redhat mac_os_x windows fedora}.each do |os|
#  supports os
# end

depends "dmg"
depends "windows"
# depends "apt"
depends "yum", '> 3.1'
depends "apache2"
