class percona::config {

# Generating the repo file for percona server
  file { '/etc/apt/sources.list.d/percona-release.list':  
    ensure  =>  'file',
    content => epp('percona/percona-release.list.epp'),
<<<<<<< HEAD
    audit   => content,
    notify  => Exec['apt-update'],
  }

  exec {'apt-update':
    command => "/usr/bin/apt-get update",
  }
  Exec["apt-update"] -> Package <| |>
=======
   }

   #  exec {'Update the repo':
   # unless  => 'test -f /etc/apt/sources.list.d/percona-release.list',
   # command => 'sudo apt-get update -y',
   # path    => ['/usr/sbin','/usr/bin','/bin', '/sbin'],
   #}
>>>>>>> 2aa533b590b5c2185843cb2126f3097468e5b0bb
}
