class percona::config {

# Generating the repo file for percona server
  file { '/etc/apt/sources.list.d/percona-release.list':  
    ensure  =>  'file',
    content => epp('percona/percona-release.list.epp'),
   }

   #  exec {'Update the repo':
   # unless  => 'test -f /etc/apt/sources.list.d/percona-release.list',
   # command => 'sudo apt-get update -y',
   # path    => ['/usr/sbin','/usr/bin','/bin', '/sbin'],
   #}
}
