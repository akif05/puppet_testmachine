# Class: percona
# ===========================
$root_pass = "servision"

include apt

apt::source { 'percona-release':
    location => 'http://repo.percona.com/apt',
    release  => 'percona-release_0.1-6.xenial_all.deb',
    #release  => '0.1-6.xenial_all.deb',
    repos    => 'main',
    key      => {
    id       => '4D1BB29D63D98E422B2113B19334A25F8507EFA5',
    server   => 'keyserver.ubuntu.com',
    },
    include  => {
      'src'  => true,
      'deb' => true,
      },
}

class percona {

  include percona::config
  include percona::install
  include percona::service

  exec { 'set mysql root pass':
    command =>  'mysqladmin -u root password ${root_pass}',
    path    => ['/usr/bin/', '/usr/sbin/',],
  }


}
