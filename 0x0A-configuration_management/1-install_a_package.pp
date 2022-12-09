# Using Puppet, install flask from pip3.
# Requirements:
# Install flask
# Version must be 2.1.0

package { 'puppet-lint':
  ensure   => '2.1.1',
  provider => 'gem',
}
