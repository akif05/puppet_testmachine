
node 'aktest1.local' {
  include zabbix
}

node 'aktest2.local' {
  include motd 
  include puppet_vim
  include ntp
  include percona
}

## Windows 7 machie
node 'akifpc.vision247.com' {
  include stdlib
  include ntp

#  file { 'c:\temp':  
#    ensure    =>'directory',
#  }
#
#  file { 'c:\temp\hello.txt':  
#    ensure    => file,
#    content => "hello, world\n",
#  }

  # Delete files and directories, specify age in seconds, minutes, days, weeks(s,m,d,w)
  tidy { 'delete temp directory':
    path     => 'c:\hello.txt',
    #age     => '1d',
    #matches => [ '[0-9]pub*.tmp', '*.temp', 'tmpfile?' ],
    age      => '10s',
    recurse  => 1,
  }
}
