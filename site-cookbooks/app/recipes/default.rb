#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Create DB
mysql_database 'leagueify' do
  connection(
    :host     => 'localhost',
    :username => 'root',
    :password => node['mysql']['server_root_password']
  )
  action :create
end

execute 'npm install' do
  cwd '/vagrant'
end