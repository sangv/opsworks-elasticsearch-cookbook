normal[:elasticsearch][:version] = '1.7.3'
normal[:elasticsearch][:plugins]['elasticsearch/elasticsearch-cloud-aws'][:version] = '2.7.0' # Must correpond to the proper Elasticsearch version. See the elasticsearch-cloud-aws repo for more info.
normal[:elasticsearch][:cluster][:name] = 'prod_cluster'  # Change to whatever you want.
normal.elasticsearch[:dir] = "/data"
normal.elasticsearch[:user]      = "elasticsearch"
normal.elasticsearch[:home_dir]  = [node.elasticsearch[:dir], node.elasticsearch[:user]].join('/')
normal.elasticsearch[:version_dir] = "#{node[:elasticsearch][:home_dir]}-#{node[:elasticsearch][:version]}"
normal.elasticsearch[:command_path]  = [node.elasticsearch[:home_dir], 'bin', 'elasticsearch'].join('/')

normal.elasticsearch[:path][:conf] = [node.elasticsearch[:version_dir], "config"].join('/')
normal.elasticsearch[:path][:data] = [node.elasticsearch[:version_dir], "data"].join('/')
normal.elasticsearch[:path][:plugins] = [node.elasticsearch[:version_dir], "plugins"].join('/')
normal.elasticsearch[:path][:logs] = ['/var/log',node.elasticsearch[:user]].join('/')
normal.elasticsearch[:path][:pids] = '/var/run'
normal.elasticsearch[:pid_file]  = [node.elasticsearch[:path][:pids], "elasticsearch.pid"].join('/')
