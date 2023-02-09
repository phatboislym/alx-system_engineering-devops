# a Puppet script that increases the amount of traffic an Nginx server can
#+ handle by increasing the ULIMIT in the default file

$file = '/etc/default/nginx'

exec { 'edit_in_place':
  command => "sed -i '5s/15/4096/' ${file}",
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
  notify  => Exec['restart_nginx']
}

exec { 'restart_nginx':
  command     => 'service nginx restart',
  path        => '/usr/bin:/usr/sbin:/bin:/sbin',
  refreshonly => true,
}
