#
# Cookbook:: spigot
# Recipe:: openjdk
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

case node['platform_family']
when 'debian'
  package 'default-jdk'
else
  fail "`#{node['platform_family']}' is not supported!"
end

