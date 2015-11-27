normal[:elasticsearch][:version] = '1.7.3'
normal[:elasticsearch][:plugins]['elasticsearch/elasticsearch-cloud-aws'][:version] = '2.7.0' # Must correpond to the proper Elasticsearch version. See the elasticsearch-cloud-aws repo for more info.
normal[:elasticsearch][:cluster][:name] = 'prod_cluster'  # Change to whatever you want.
