#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_connection_info = {
	:host     => 'localhost',
    :username => 'root',
    :password => node['mysql']['server_root_password']
}

# Create DB
mysql_database 'leagueify' do
  connection mysql_connection_info
  action :create
end

mysql_database 'leagueify' do
  connection mysql_connection_info
  sql { ::File.open('/vagrant/leagueify.sql').read }
  action :query
end

execute 'npm install' do
  cwd '/vagrant'
end

