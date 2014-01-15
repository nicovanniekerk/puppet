class deployServises {
		
	exec { 'switch':
	command => 'cmd "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput = true,
	path => $::path
	}

}
