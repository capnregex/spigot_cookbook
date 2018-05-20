#
# Cookbook:: spigot
# Recipe:: buildtools
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# see https://www.spigotmc.org/wiki/buildtools/

tag = 'Stable'
target = 'BuildTools.jar'
domain =  'hub.spigotmc.org'
job = 'jenkins/job/BuildTools'
build = "last#{tag}Build"
jar_url = "https://#{domain}/#{job}/#{ build }/artifact/target/#{target}"
dir = '/opt/build_tools'

directory dir

package 'git'
package 'default-jdk-headless'
# package 'openjdk-8-jre-headless'

remote_file "#{dir}/#{target}" do
  source jar_url
end

# execute "git config unset core autocrlf" do
#   command "git config --global --unset core.autocrlf"
# end

execute "run BuildTools" do
  command "java -jar BuildTools.jar"
  cwd dir
  live_stream true
end

