include_recipe "libedit"
include_recipe "libgssapi-krb5"
include_recipe "libssl"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    openssh-client
  /
when "precise"
  include_recipe "libselinux"

  packages |= %w/
    openssh-client
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
