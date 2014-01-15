class deployServises {
		
	exec { 'switch':
	command => 'cmd "cd C:/build-scripts"',
	path => $::path
	}
	
	exec { 'run_deploy':
	command => 'cmd "runStartup.bat"',
	path => $::path
	}
}
