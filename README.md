Description
===========

Installs and configures varnish.

Changes
=======

## v 0.8.0:

* Current public release.

Roadmap
-------

* COOK-648 - add RHEL support
* COOK-873 - better configuration control via attributes

Requirements
============

## Platform:

Tested on:

* Ubuntu 10.04
* Debian 6.0

Attributes
==========

* `node['varnish']['dir']` - location of the varnish configuration
  directory
* `node['varnish']['default']` - location of the `default` file that
  controls the varnish init script on Debian/Ubuntu systems.

* `node['varnish']['nfiles']` - Maximum number of open files (for ulimit -n)

* `node['varnish']['instance']` - Default varnish instance name is the local nodename

* `node['varnish']['listen']['host']` - Host address that Varnish listens for connections on

* `node['varnish']['listen']['port']` - Port that Varnish listens for connections on

* `node['varnish']['admin']['host']` - Host address that Varnish admin interface listens on

* `node['varnish']['admin']['port']` - Port that Varnish admin interface listens on

* `node['varnish']['backend']['host']` - Backend address of content server that Varnish serves content from

* `node['varnish']['backend']['port']` - Backend port of content server that Varnish serves content from

* `node['varnish']['user']` - User Varnish runs as

* `node['varnish']['group']` - Group Varnish runs as

* `node['varnish']['storage']` - Storage type parameters that specify how Varnish caches objects


Recipes
=======

default
-------

Installs the varnish package, manages the default varnish
configuration file, and the init script defaults file.

Usage
=====

On systems that need a high performance caching server, use
`recipe[varnish]`. Additional configuration can be done by modifying
the `default.vcl.erb` and `ubuntu-default.erb` templates. By default
the `ubuntu-default.erb` is set up for minimal configuration with no VCL.

License and Author
==================

Author:: Joe Williams <joe@joetify.com>

Copyright:: 2008-2009, Joe Williams

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
