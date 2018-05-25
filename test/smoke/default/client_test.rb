# # encoding: utf-8

# Inspec test for recipe plex-hackday::client

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# TODO: get correct package name for plex client
describe package("plexmediaserver") do
  it { should be_installed }
end

# TODO: write tests for directories/config files/users