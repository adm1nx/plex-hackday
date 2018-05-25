#
# Cookbook:: plex-hackday
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if ['plex_role'] == 'server'
  include_recipe 'plex-hackday::server'
else
  include_recipe 'plex-hackday::client'
end
