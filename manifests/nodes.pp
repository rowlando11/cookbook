node 'demo', 'demo2' {
	include puppet
  include memcached
  include sudoers
  nginx::website { 'adorable-animals':
    site_domain => 'adorable-animals.com',
  }
  class { 'ntp2':
    server => 'us.pool.ntp.org',
  }

  file { '/tmp/test':
    content => 'Beeblebrox, this is a very large drink',
  }
  

  file { '/tmp/hello':
    content => "Hello, world\n",
  }
}
