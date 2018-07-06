class zabbix {

  package { 'zabbix-agent':
    ensure => 'installed',
    #ensure => 'purged',
  }

  file { '/etc/zabbix':
    ensure => directory,
  }

  file { '/etc/zabbix/zabbix_agentd.conf':
    ensure         => present,
    content    => template("/etc/puppetlabs/code/environments/production/modules/common/files/etc/zabbix/zabbix_agentd.erb"),
    notify => Service[zabbix-agent]
  }

  service { 'zabbix-agent':
    ensure => running,
  }
}
