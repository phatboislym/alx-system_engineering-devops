# this Puppet script fixes the WordPress file `wp-settings.php`
# it used sed to replaces instances of `phpp` with `php` 

$file_to_edit = '/var/www/html/wp-settings.php'

exec { 'fix-apache':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => '/usr/bin/:/bin/'
}

