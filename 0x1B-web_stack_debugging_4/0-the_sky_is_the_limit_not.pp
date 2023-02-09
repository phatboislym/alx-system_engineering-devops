$file = '/etc/nginx/nginx.conf'


exec { 'edit_in_place':
  command => "sed -i '2s/4/auto/' ${file}",
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
  notify  => Exec['nginx_restart']
}

exec { 'restart_nginx':
  command     => 'service nginx restart',
  path        => '/usr/bin:/usr/sbin:/bin:/sbin',
  refreshonly => true,
}
