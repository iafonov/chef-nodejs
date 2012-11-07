#
# Cookbook Name:: nodejs
# Recipe:: default
#

package "software-properties-common"

execute "setup ppa apt repository" do
  command "add-apt-repository ppa:chris-lea/node.js && apt-get update"
  not_if  "ls /etc/apt/sources.list.d/chris-lea*"
end

package "nodejs"
