# Encoding: utf-8
#
# Cookbook Name:: elasticsearch
# Recipe:: default
#

include_recipe 'chef-sugar'

# see README.md and test/fixtures/cookbooks for more examples!
elasticsearch_user 'elasticsearch'
elasticsearch_install 'elasticsearch' do
  type node['elasticsearch']['install_type'].to_sym # since TK can't symbol.
end
elasticsearch_configure 'elasticsearch' do
  # if you override one of these, you probably want to override all
  dir '/data/elasticsearch'
  path_conf     tarball: "/data/elasticsearch/conf"
  path_data     tarball: "/data/elasticsearch/data"
  path_logs     tarball: "/data/elasticsearch/logs"
  path_pid      tarball: "/data/elasticsearch/pid"
  path_plugins  tarball: "/data/elasticsearch/plugins"
  path_bin      tarball: "/usr/local/bin"

  logging({:"action" => 'INFO'})

  allocated_memory '123m'
  thread_stack_size '512k'

  env_options '-DFOO=BAR'
  gc_settings <<-CONFIG
                -XX:+UseParNewGC
                -XX:+UseConcMarkSweepGC
                -XX:CMSInitiatingOccupancyFraction=75
                -XX:+UseCMSInitiatingOccupancyOnly
                -XX:+HeapDumpOnOutOfMemoryError
                -XX:+PrintGCDetails
              CONFIG

  configuration ({
    'node.name' => 'crazy'
  })

  action :manage
end

elasticsearch_service 'elasticsearch'

# by default, no plugins
