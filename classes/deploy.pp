class deployServises {

	file { 'C:/puppet/start.bat':
		ensure => 'exists',
		source => 'C:/hallo.txt'
	}

		
	exec { 'run_deploy':
	command => 'cmd "start.bat"',
	path => $::path
	}
}
