#!/usr/bin/env puppet
# This puppet script,creates a manifest that kills a process named killmenow.

exec { 'kill':
  command   => 'pkill -f killmenow',
  path      => ['/usr/bin', '/usr/sbin'],
  returns   => ['0', '1'],
  logoutput => true,
}
