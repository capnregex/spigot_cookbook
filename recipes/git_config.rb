
dir = node['spigot']['buildtools']['directory']

package 'git'

execute "git config unset core autocrlf" do
  cwd dir
  command "git config --global --unset core.autocrlf"
  returns [0, 5]
end

