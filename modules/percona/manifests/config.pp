class percona::config {

# Generating the repo file for percona server
  file { '/etc/apt/sources.list.d/percona-release.list':  
    ensure  => 'file',
    content => epp('percona/percona-release.list.epp'),
   }
}
