#
# Cookbook:: my_apache2_cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
package 'apache2' # Installs the apache2 package

service 'apache2' do
  action [:start, :enable] # Starts and enables the apache2 service on boot
end

template '/var/www/html/index.html' do
  source 'index.html.erb' # Template for /var/www/html/index.html
end 
