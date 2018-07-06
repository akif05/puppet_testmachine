class test1::service (
  $ntp_service = $test1::params::ntp_service,
) inherits test1::params {	
  service {'NTP_Service':
	  ensure  => 'running',
	  enable  => true,
	  name    => $ntp_service,
	  subscribe => Class['test1::config'],
	}
}
