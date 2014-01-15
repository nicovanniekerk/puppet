class deployServises {
		
	exec { 'switch':
	command => 'cmd "runStartup.bat"',
	cwd =>  'C:/build-scripts'
	path => $::path
	}

}
