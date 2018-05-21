# 
# Cookbook::spigot
# Recipe:: download_buildtools
#
# CopyLeft:: The Authors
#
# References
# * https://www.spigotmc.org/wiki/buildtools/

dir = node['spigot']['buildtools']['directory']
tag = node['spigot']['buildtools']['tag']
target = node['spigot']['buildtools']['target']
domain = node['spigot']['buildtools']['domain']
job = node['spigot']['buildtools']['job']
build = node['spigot']['buildtools']['build'] || "last#{tag}Build"
jar_url = node['spigot']['buildtools']['jar_url'] || "https://#{domain}/#{job}/#{ build }/artifact/target/#{target}"

directory dir

remote_file "#{dir}/#{target}" do
  source jar_url
end


