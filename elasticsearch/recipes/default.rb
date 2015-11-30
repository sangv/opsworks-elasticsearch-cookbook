elasticsearch_configure 'elasticsearch' do
  # if you override one of these, you probably want to override all
  dir '/data'
  path_conf     tarball: "/data/elasticsearch/conf"
  path_data     tarball: "/data/elasticsearch/data"
  path_logs     tarball: "/data/elasticsearch/logs"
  path_plugins  tarball: "/data/elasticsearch/plugins"

  logging({:"action" => 'INFO'})

end
