#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "#{node['nginx']['dir']}/sites-available/app" do
	source "app.erb"
	mode 0644
	notifies :reload, "service[nginx]"
	variables({
		:hostname => '_',
		:dir => "/var/www/app/public"
	})
end

directory "/var/www/app" do
	owner node['nginx']['user']
	group node['nginx']['group']
	mode 00755
	action :create
end

nginx_site "app"

nginx_site "default" do
	enable false
end

package "php5-fpm" do
	action :install
end

service "php5-fpm" do
	supports :status => true, :restart => true
	action :start
end

# Create DB
mysql_database 'leagueify' do
  connection(
    :host     => 'localhost',
    :username => 'root',
    :password => node['mysql']['server_root_password']
  )
  action :create
end