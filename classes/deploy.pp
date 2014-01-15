class deployServises {

	file{ "C:/puppet":
		recurse => true,
		source => "puppet:///puppetfiles",
		notify => Exec['switch'],
	}

	exec { 'switch':
	command => 'cmd /k start "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput => true,
	path => $::path,
	}

}
