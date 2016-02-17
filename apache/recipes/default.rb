#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# chef-repo\Cookbooks\apache\recipes\default.rb

#install apache
#package 'apache2'

#service 'apache2' do
#  supports :status => true
#  action [:enable, :start]
#end

#file '/var/www/html/index.html' do
#  content '<html>
#  <body>
#    <h1>hello world. This is Ubuntu...</h1>
#  </body>
# </html>'
# end

# file "/tmp/deploy.sh" do
#   source "deploy.sh"
#   mode 0755
# end

# execute "deploy my package" do
#   command "sh /tmp/deploy.sh"
# end

script "install_something" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    wget http://ec2-54-191-40-41.us-west-2.compute.amazonaws.com:8081/nexus/content/repositories/releases/ca/uwo/csd/cs2212/USERNAME/USERNAME-lab5/1.0.3/USERNAME-lab5-1.0.3.jar
  EOH
end