class percona::config {

# Generating the repo file for percona server
  file { '/etc/apt/sources.list.d/percona-release.list':  
    ensure  => 'file',
    content => epp('percona/percona-release.list.epp'),
    audit   => content,
    notify  => Exec['apt-update'],
  }

  exec {'apt-update':
    command => "/usr/bin/apt-get update",
  }
  Exec["apt-update"] -> Package <| |>
}
