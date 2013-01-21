# Class: postgresql::java
#
# This class installs the postgresql jdbc connector.
#
# Parameters:
#   [*java_package_name*]  - The name of the postgresql java package.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
#   class { 'postgresql::java': }
#
class postgresql::java (
  $package_name   = $postgresql::params::java_package_name,
  $package_ensure = 'present'
) inherits postgresql::params {

  package { 'postgresql-jdbc':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
