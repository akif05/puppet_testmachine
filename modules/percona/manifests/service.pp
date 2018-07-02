class percona::service {

  service { 'mysql':
    name   => mysql,
    ensure => running,
    enable => true,
  }

}
