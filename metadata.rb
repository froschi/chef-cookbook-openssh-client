maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures openssh-client"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libedit", ">= 0.0.1"
depends          "libgssapi-krb5", ">= 0.0.1"
depends          "libselinux", ">= 0.0.1"
depends          "libssl", ">= 0.0.1"
