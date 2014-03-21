# Manage the sudopers file
class sudoers {
  file { '/etc/sudoers':
    source => 'puppet:///modules/sudoers/sudoers',
    mode   => '0440',
    owner  => 'root',
    group  => 'root',
  }
}
