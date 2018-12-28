# 
# Cookbook::spigot
# Recipe:: download_buildtools
#
# CopyLeft:: The Authors
#
# References
# * https://www.spigotmc.org/wiki/buildtools/
#

dir = node['spigot']['buildtools']['directory']
jdk = node['spigot']['jdk']['package']
target = node['spigot']['buildtools']['target']
memory = node['spigot']['buildtools']['memory']

package jdk

execute "run BuildTools" do
  cwd dir
  command "java -Xmx#{memory} -jar #{target}"
  live_stream true
end

