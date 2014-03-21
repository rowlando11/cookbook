node 'demo' {
	nginx::website { 'adorable-animals':
		site_domain => 'adorable-animals.com',
	}
	class { 'ntp':
		server => 'us.pool.ntp.org',
	}

	file { '/tmp/test':
		content => 'Beeblebrox, this is a very large drink',
	}
}
