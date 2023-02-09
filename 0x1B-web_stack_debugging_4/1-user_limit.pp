# a Puppet script that enables the user `holberton` open files without error
#+ by increasing the limit of open file descriptors

exec { 'increase_file_limits':
  command => 'sed -i "56s|5|65536|" /etc/security/limits.conf \
           && sed -i "57s|4|65536|" /etc/security/limits.conf \
           && echo "session required pam_limits.so" >> /etc/pam.d/common-session',
  path    => '/bin/:/sbin/:usr/bin/:/usr/sbin/'
}

