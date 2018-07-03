class percona::install {

  package { 'percona-release':
    ensure => '0.1-6.xenial',
  }
  package { 'percona-server-client-5.7':
    ensure => '5.7.22-22-1.xenial',
  }
  package { 'percona-server-common-5.7':
    ensure => '5.7.22-22-1.xenial',
  }
  package { 'percona-server-server-5.7':
    ensure => '5.7.22-22-1.xenial',
  }
  package { 'percona-toolkit':
    ensure => '3.0.10-1.xenial',
  }
  package { 'percona-xtrabackup':
    ensure => '2.3.10-1.xenial',
  }

}
