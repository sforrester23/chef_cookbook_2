#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'nginx'

service 'nginx' do
  action [:enable, :start]
end

# template 'destination' do
#   source 'name file in templates.conf.erb'
# end

# template '/etc/nginx/sites-available/proxy.conf' do
#   source 'proxy.conf.erb'
#   # variables(proxy_port: node['nginx']['proxy_port'], proxy_port_2: node['nginx']['proxy_port_2'])
#   notifies :restart, 'service[nginx]'
# end
#
# link '/etc/nginx/sites-enabled/proxy.conf' do
#   to '/etc/nginx/sites-available/proxy.conf'
#   notifies :restart, 'service[nginx]'
# end
#
# link "/etc/nginx/sites-enabled/default" do
#   action :delete
#   notifies :restart, 'service[nginx]'
# end


# include_recipe 'nodejs'
#
# nodejs_npm 'pm2'
