# initial manifest for puppet class
class puppet {
  file { '/usr/local/bin/papply':
    source  => 'puppet:///modules/puppet/papply.sh',
    mode    => '0755',
  }

  file { '/usr/local/bin/pull-updates':
    source  => 'puppet:///modules/puppet/pull-updates.sh',
    mode    => '0755',
  }

  file { '/home/rowlando/.ssh/id_dsa':
    source  => 'puppet:///modules/puppet/row.priv',
    owner   => 'rowlando',
    mode    => '0600',
  }

  cron { 'run-puppet':
    ensure  => 'present',
    user    => 'rowlando',
    command => '/usr/local/bin/pull-updates',
    minute  => '*/10',
    hour    => '*',
  }
}
