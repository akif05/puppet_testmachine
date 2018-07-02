class defaultnode {
  file { '/etc/zabbix':
    ensure => directory,
  }
  
  file { '/etc/zabbix/zabbix_agentd.conf':
    ensure         => present,
    content    => template("/etc/puppetlabs/code/environments/production/modules/common/files/etc/zabbix/zabbix_agentd.erb"),
    notify => Service[zabbix-agent]
  }
  package { 'zabbix-agent':
    ensure => installed,
  }
  
  service { 'zabbix-agent':
    ensure => running,
  }
}
