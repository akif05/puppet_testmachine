class percona::service {

  service { 'mysql':
    name   => mysql,
    ensure => started,
    enable => true,
  }

}
