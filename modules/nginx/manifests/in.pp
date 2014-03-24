if $::operatingsystem in [ 'Ubuntu', 'Debian' ] {
  notify { 'Debian-type operating system detected': }
} elsif $::operatingsystem in [ 'RedHat', 'Fedora', 'SuSE',
  'CentOS' ] {
  notify { 'RedHat-type operating system detected': }
} else {
  notify { 'Some other operating system detected': }
} 

$debianlike = $::operatingsystem in [ 'Debian', 'Ubuntu' ]
   if $debianlike {
     notify { 'You are in a maze of twisty little packages, all alike': }
}
