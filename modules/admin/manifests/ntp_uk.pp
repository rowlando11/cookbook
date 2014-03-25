class admin::ntp_uk inherits admin::ntp {
  File['/etc/ntp.conf'] {
    source  => undef, 
    content => 'clock.redhat.com prefer', 
  }
}
