class percona::service {

  service { 'mysql':
    name    => mysql,
    ensure  => running,
    enable  => true,
    require => [
      Package['percona-server-server-5.7'],
      File['/etc/apt/sources.list.d/percona-release.list'],
    ],
    
  }

}
