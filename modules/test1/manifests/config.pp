class test1::config ( 
  $location = 'london',
) {
  $valid_locations = [
    '^london$',
    '^paris$',
  ]
  validate_re( $location, $valid_locations )
  
  test1::admin_file{ '/etc/ntp.conf': 
    ntp_location => $location,
  }
}
