#
# Cookbook:: sample_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'isc-dhcp-server'

service 'isc-dhcp-server' do
	action [ :enable , :start ]
end

package 'git'

execute 'grep-command' do
	command 'netstat -tulpn'
end

package 'isc-dhcp-server' do
	action :purge
end

package 'git' do
	action :purge
end
