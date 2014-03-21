# Manage NTP server
class ntp2($server='UNSET') {
  package { 'ntp':
    ensure => installed,
  }

  file { '/etc/ntp.conf':
    content => template('ntp2/ntp.conf.erb'),
    notify  => Service['ntp'],
  }

  service { 'ntp':
    ensure  => running,
    enable  => true,
    require => [ Package['ntp'], File['/etc/ntp.conf'] ],
  }
}
