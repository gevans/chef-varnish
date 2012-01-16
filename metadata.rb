maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs and configures varnish"
version           "0.9"

recipe "varnish", "Installs and configures varnish"

%w{ubuntu debian}.each do |os|
  supports os
end

attribute "varnish/dir",
  :display_name => "Varnish Configuration Directory",
  :description => "Location of the varnish configuration directory",
  :default => "/etc/varnish"

attribute "varnish/default",
  :display_name => "Varnish Default File",
  :description => "Location of the default file that controls the varnish init script on Debian/Ubuntu systems",
  :default => "/etc/default/varnish"

attribute "varnish/nfiles",
  :display_name => "Varnish Open File Descriptors Limit",
  :description => "Maximum number of open files (for ulimit -n)",
  :default => "131072"

attribute "varnish/instance",
  :display_name => "Varnish Instance Name",
  :description => "Default varnish instance name is the local nodename",
  :default => "current node name"

attribute "varnish/listen/host",
  :display_name => "Varnish Listening Address",
  :description => "Host address that Varnish listens for connections on",
  :default => "0.0.0.0"

attribute "varnish/listen/port",
  :display_name => "Varnish Listening Port",
  :description => "Port that Varnish listens for connections on",
  :default => "6081"

attribute "varnish/admin/host",
  :display_name => "Varnish Administration Host Address",
  :description => "Host address that Varnish admin interface listens on",
  :default => "localhost"

attribute "varnish/admin/port",
  :display_name => "Varnish Administration Port",
  :description => "Port that Varnish admin interface listens on",
  :default => "6082"

attribute "varnish/backend/host",
  :display_name => "Varnish Backend Host",
  :description => "Backend address of content server that Varnish serves content from",
  :default => "localhost"

attribute "varnish/backend/port",
  :display_name => "Varnish",
  :description => "Backend port of content server that Varnish serves content from",
  :default => "8080"

attribute "varnish/user",
  :display_name => "Varnish User",
  :description => "User Varnish runs as",
  :default => "varnish"

attribute "varnish/group",
  :display_name => "Varnish Group",
  :description => "Group Varnish runs as",
  :default => "varnish"

attribute "varnish/storage",
  :display_name => "Varnish Storage Options",
  :description => "Storage type parameters that specify how Varnish caches objects",
  :default => "file,/var/lib/varnish/$NODE_NAME/varnish_storage.bin,1G"
