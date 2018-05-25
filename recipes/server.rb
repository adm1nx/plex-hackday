#
# Cookbook:: plex-hackday
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# TODO: This is dropping "xenial" in the deb line. we might need to remove it.
remote_file "/opt/plexmediaserver.deb" do
  source node["plex-hackday"]["deb"]["package"]
  owner 'root'
  group 'root'
  mode '0755'
  checksum node["plex-hackday"]["deb"]["checksum"]
  action :create
end

apt_package "/opt/plexmediaserver.deb" do
  action :install
end

# TODO: figure out the correct package name and install Plex server
# apt_package 'plex' do
#   action :install
# end
