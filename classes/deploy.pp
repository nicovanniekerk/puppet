class deployServises {

	file { 'C:/puppet/start.bat':
		ensure => exists,
	}

		
	exec { 'run_deploy':
	command => 'cmd "start.bat"',
	path => $::path
	}
}
