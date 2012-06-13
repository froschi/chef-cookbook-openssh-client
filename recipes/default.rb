packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    openssh-client
  /
when "precise"
  packages |= %w/
    openssh-client
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
