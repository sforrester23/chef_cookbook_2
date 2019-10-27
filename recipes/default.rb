#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'nginx'

service 'nginx' do
  action :enable
end

service 'nginx' do
  action :start
end

package 'nodejs'
