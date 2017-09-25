#
# Cookbook:: multiple_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

%w{apache2 tree git}.each do |pkg|
	package pkg do
		action :install
	end
end

['apache2', 'tree', 'git'].each do |pkg|
	package pkg do
		action :purge
	end
end
