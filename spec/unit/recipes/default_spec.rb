#
# Cookbook:: node
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'node::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'Should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end

    it 'Enables the nginx service' do
      expect(chef_run).to enable_service 'nginx'
    end

    it 'Starts the nginx service' do
      expect(chef_run).to start_service 'nginx'
    end

    it 'Installs nodejs' do
      expect(chef_run).to install_package 'nodejs'
    end

  end

end
