#
# Cookbook:: ngnix_node_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'apt'
include_recipe 'nodejs'

apt_update
package 'nginx'

service 'nginx' do
  action :enable
end

service 'nginx' do
  action :start
end

nodejs_npm 'pm2'
