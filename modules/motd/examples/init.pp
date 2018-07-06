#include motd
class { 'motd':
  motd_message => 'Weekly',
}

#$down_time = '17:00'
#
#$motd = @(END)
#Welcome to the server: <%= @facts['networking']['fqdn'] %>
#The sever will be down today at: <%= @down_time %>
#END

#file { '/etc/motd':
#  ensure  => 'file',
#  content => inline_template(@motd),
#}
