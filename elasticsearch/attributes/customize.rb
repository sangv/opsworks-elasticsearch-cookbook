normal[:elasticsearch][:version] = '1.7.3'
normal[:elasticsearch][:plugins]['elasticsearch/elasticsearch-cloud-aws'][:version] = '2.7.0' # Must correpond to the proper Elasticsearch version. See the elasticsearch-cloud-aws repo for more info.
normal[:elasticsearch][:cluster][:name] = 'prod_cluster'  # Change to whatever you want.
normal[:elasticsearch][:path_conf][:tarball] = '/data/elasticsearch/conf' 
normal[:elasticsearch][:path_data][:tarball] = '/data/elasticsearch/data' 
normal[:elasticsearch][:path_logs][:tarball] = '/data/elasticsearch/logs' 
normal[:elasticsearch][:path_plugins][:tarball] = '/data/elasticsearch/plugins' 
