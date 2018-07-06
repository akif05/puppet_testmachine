# Class: test1
# ===========================
#
# Full description of class test1 here.
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
#    class { 'test1':
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
#


#class test1 {
#define resolve($nameserver1, $nameserver2, $domain, $search) {
#  $str = "search ${search}
#  domain ${domain}
#  nameserver ${nameserver1}
#  nameserver ${nameserver2}
#  "
#  file { '/etc/resolv.conf':
#    content => $str,
#    }
#  }
#}

#` test1.resolve("8.8.8.8, "8.8.4.4", "vision247.com", "vision247.com")

#Manage NTP on CentOS and Ubuntu hosts
class test1 {
	package { 'ntp': 
	  before => Class['test1::config'],
  }
  class { test1::config: location => 'paris', }
  include test1::service
}
	
