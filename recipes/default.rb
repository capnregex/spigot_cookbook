#
# Cookbook:: Spigot
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

include_recipe 'spigot::buildtools'


