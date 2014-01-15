class deployServises {
		
	exec { 'run_deploy':
	command => 'cmd "C:/build-scripts/runStartup.bat"',
	path => $::path
	}
}
