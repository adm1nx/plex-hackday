#
# Cookbook:: plex-hackday
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'plex-hackday::server' do
  context 'When all attributes are default, on CentOS 7.0' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

    it 'intalls plex' do 
      expect(chef_run).to create_remote_file('/path/to/plexmediaserver_1.13.0.5023-31d3c0c65_amd64.deb')
      expect(chef_run).to install_package('plexmediaserver')
    end

    it 'adds big buck bunny to the library' do 
      expect(chef_run).to create_file('/path/to/big_buck_bunny.mp4')
    end
      

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
