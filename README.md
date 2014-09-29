# capistrano-runit-danthes

Capistrano3 tasks for manage danthes through puma via runit supervisor.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-runit-danthes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-runit-danthes

## Usage

Add this line in `Capfile`:
```
require 'capistrano/runit/danthes'
```

## Tasks

* `runit:danthes:setup` -- setup danthes runit service.
* `runit:danthes:enable` -- enable and autostart service.
* `runit:danthes:disable` -- stop and disable service.
* `runit:danthes:start` -- start service.
* `runit:danthes:stop` -- stop service.
* `runit:danthes:restart` -- restart service.

## Variables

* `runit_danthes_role` -- what host roles uses runit to run danthes. Default value: `:app`
* `runit_danthes_default_hooks` -- run default hooks for runit danthes or not. Default value: `true`.
* `runit_danthes_threads_min` -- minimal threads to use. Default value: 0.
* `runit_danthes_threads_max` -- maximal threads to use. Default value: 16.
* `runit_danthes_bind` -- bind URI. Examples: tcp://127.0.0.1:8080, unix:///tmp/danthes.sock. Default value: `tcp://127.0.0.1:9292`.
* `runit_danthes_rackup` -- Path to application's rackup file. Default value: `File.join(current_path, 'danthes.ru')`
* `runit_danthes_state`  -- Path to danthes's state file. Default value: `File.join(shared_path, 'tmp', 'pids', 'danthes.state')`
* `runit_danthes_pid` -- Path to pid file. Default value: `File.join(shared_path, 'tmp', 'pids', 'danthes.pid')`
* `runit_danthes_bind` -- Puma's bind string. Default value: `File.join('unix://', shared_path, 'tmp', 'sockets', 'danthes.sock')`
* `runit_danthes_conf` -- Path to danthes's config file. Default value: `File.join(shared_path, 'danthes.rb')`
* `runit_danthes_access_log` -- Path to danthes's access log. Default value: `File.join(shared_path, 'log', 'danthes_access.log')`
* `runit_danthes_error_log` -- Path to danthes's error log. Default value: `File.join(shared_path, 'log', 'danthes_access.log')`

## Contributing

1. Fork it ( https://github.com/capistrano-runit/capistrano-runit-danthes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
