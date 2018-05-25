#
# Cookbook:: plex-hackday
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# TODO: This is dropping "xenial" in the deb line. we might need to remove it.
apt_repository "plex" do
  uri "https://downloads.plex.tv/repo/deb"
  components ["./public", "main"]
  key "https://downloads.plex.tv/plex-keys/PlexSign.key"
  action :add
end

apt_update "plex" do
#   ignore_failure "true"
  action :update
end

# TODO: figure out the correct package name and install Plex server
# apt_package 'plex' do
#   action :install
# end
