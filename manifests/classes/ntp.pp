class ntp {
  #include defaultnode
 
  case $opearatingsystem {
    centos, redhat: { $server_name = 'ntp' }
    debian, ubuntu: { $server_name='ntpd' }
  }
  
  package { 'ntp':
    ensure => installed,
  }
  
  service { 'ntp':
    name      => $server_name,
    ensure    => running,
    enable    => true,
    subscribe => File['ntp.conf'],
  }
  
  file { 'ntp.conf':
    path    => '/etc/ntp.conf',
    ensure  => 'file',
    require => Package['ntp'],
    source  => "/etc/puppetlabs/code/modules/ntp/files/ntp.conf",
    #This Source file would be located on the Puppet master at
    # /etc/puppetlabs/code/modules/ntp/files/ntp.conf
  }
}
