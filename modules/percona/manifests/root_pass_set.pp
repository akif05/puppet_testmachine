exec { 'mysqladmin -u root password "ak111"': 
  path => ['/usr/bin/, '/usr/sbin/',],
}
