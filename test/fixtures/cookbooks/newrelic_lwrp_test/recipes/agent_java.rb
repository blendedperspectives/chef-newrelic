# Encoding: utf-8
#
# Cookbook Name:: newrelic_poc
# Recipe:: agent_java
#
# Copyright 2012-2015, Escape Studios
#

include_recipe 'java'

tomcat_install 'java_test_app' do
  tomcat_user 'tomcat_user'
  tomcat_group 'tomcat_group'
end

newrelic_agent_java 'Install' do
  license node['newrelic']['license']
  install_dir node['newrelic']['java_agent']['install_dir']
  app_name 'java_test_app'
  app_user 'root'
  app_group 'root'
end

# newrelic_agent_java 'Remove' do
#   action :remove
# end
