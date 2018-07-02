class percona::config {
#  apt::source { "percona-release_0.1-6.$(lsb_release -sc)_all.deb": 
#    location => 'https://repo.percona.com/apt'
#    key      => '430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A'
#    repos    => 'xenial main' 
#  }

# Generating the repo file for percona server
  file { '/etc/apt/sources.list.d/percona-release.list':  
     ensure        => 'file',
     content       => epp('percona/percona-release.list.epp'),
   }
}
