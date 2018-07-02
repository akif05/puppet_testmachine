clasa percona::config {

   # Generating the repo file for percona server
   file { '/etc/apt/sources.list.d/percona-release.list': 
     ensure        => 'file',
     content => epp('puppet:///percona/spercona-release.list.epp'),
   }
}
