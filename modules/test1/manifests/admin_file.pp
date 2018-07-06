define test1::admin_file ( $ntp_location = 'london' ) {
  include test1::params
  $admingroup = $test1::params::admingroup
  file { $title :
    content => file('test1/ntp.conf'),
    owner   => 'root',
    group   => $admingroup,
    mode    => '06004',
    ensure  => 'file',
    notify  => Class['test1::service'],
  }
}
