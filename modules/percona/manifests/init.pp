# Class: percona
# ===========================
#
# Full description of class percona here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'percona':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
# https://repo.percona.com/apt/percona-release_0.1-6.wheezy_all.deb
#
#$root_pass = "serv\!\$ion"

include apt

apt::source { 'percona-release':
    location => 'http://repo.percona.com/apt',
    #   release  => 'percona-release_0.1-6.xenial_all.deb',
    release  => '0.1-6.xenial_all.deb',
    repos    => 'main',
    key      => {
    id       => '4D1BB29D63D98E422B2113B19334A25F8507EFA5',
    server   => 'keyserver.ubuntu.com',
    },
    include  => {
      'src'  => true,
      'deb' => true,
      },
}

class percona {
  include percona::config
  include percona::install
  include percona::service

  #  exec { 'set mysql root pass':
  #   command =>  'mysqladmin -u root password ${root_pass}',
  #   path    => ['/usr/bin/', '/usr/sbin/',],
  # }

  #exec { 'mysqladmin -u root -p"serv!$ion" password "newpassword"':
  #exec { 'mysqladmin -u root  password $root_pass"':
  #  path => ['/usr/bin/', '/usr/sbin/',],
  #}

}
