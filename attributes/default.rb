case platform
when "debian","ubuntu"
  set[:varnish][:dir]     = "/etc/varnish"
  set[:varnish][:default] = "/etc/default/varnish"
end

default[:varnish][:nfiles] = '131072'

default[:varnish][:instance] = Chef::Config[:node_name]

default[:varnish][:listen][:host] = '0.0.0.0'
default[:varnish][:listen][:port] = '6081'

default[:varnish][:admin][:host] = 'localhost'
default[:varnish][:admin][:port] = '6082'

default[:varnish][:backend][:host] = 'localhost'
default[:varnish][:backend][:port] = '8080'

default[:varnish][:user] = 'varnish'
default[:varnish][:group] = 'varnish'

default[:varnish][:storage] = "file,/var/lib/varnish/#{Chef::Config[:node_name]}/varnish_storage.bin,1G"
