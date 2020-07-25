#
# Cookbook:: lamp_cookbook
# Recipe:: mysql
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

mysql_service 'default' do
  version '5.7'
  bind_address '0.0.0.0'
  port '3306'
  data_dir '/data'
  initial_root_password node['lamp']['mysql']['default_root_password']
  action [:create, :start]
end
