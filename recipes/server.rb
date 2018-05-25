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

dpkg_package "/opt/plexmediaserver.deb" do
  action :install
end

directory node["plex-hackday"]["library_path"] do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

cookbook_file "#{node["plex-hackday"]["library_path"]}/big_buck_bunny.mp4" do
  source 'big_buck_bunny.mp4'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
