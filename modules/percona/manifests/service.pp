class percona::service {

  service { 'mysql':
    name    => mysql,
    ensure  => running,
    enable  => true,
    require => [
<<<<<<< HEAD
      Package['percona-server-server-5.7'],
      File['/etc/apt/sources.list.d/percona-release.list'],
    ],
    
=======
    Package['percona-server-server-5.7'],
    File['/etc/apt/sources.list.d/percona-release.list'],
    ],
   
>>>>>>> 2aa533b590b5c2185843cb2126f3097468e5b0bb
  }
}
