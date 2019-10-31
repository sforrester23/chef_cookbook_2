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
    platform 'ubuntu', '18.04'

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

    # it 'Installs nodejs' do
    #   expect(chef_run).to include_recipe 'nodejs'
    # end
    #
    # it 'should install pm2 via npm' do
    #   expect(chef_run).to install_nodejs_npm 'pm2'
    # end
    #
    # it 'should create proxy.conf template in /etc/nginx/sites-available' do
    #   expect(chef_run).to create_template "/etc/nginx/sites-available/proxy.conf"
    # end
    #
    # it 'should create a symlink of proxy.conf between sites-enabled and sites-available' do
    #   expect(chef_run).to create_link("/etc/nginx/sites-enabled/proxy.conf").with_link_type(:symbolic)
    # end
    #
    # it 'should delete the symlink from the default.conf' do
    #   expect(chef_run).to delete_link "/etc/nginx/sites-enabled/default"
    # end
    #
    # it 'runs apt get apt update' do
    #   expect(chef_run).to update_apt_update 'update_sources'
    # end
    #
    # it "should create a proxy.conf template in /etc/nginx/sites-available with port 3000" do
    #   expect(chef_run).to create_template("/etc/nginx/sites-available/proxy.conf").with_variables(proxy_port: 3000, proxy_port_2: 3030)
    # end
  end
end
