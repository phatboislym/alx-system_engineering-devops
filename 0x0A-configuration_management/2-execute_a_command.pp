# Using Puppet, create a manifest that kills a process named killmenow.
# Requirements:
# Must use the exec Puppet resource
# Must use pkill

exec { 'pkill -f killmenow':
  path => '/usr/bin/:/usr/local/bin/:usr/sbin/:/bin'
}
