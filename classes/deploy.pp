class deployServises {

	file{ "C:/puppet":
		recurse => true,
		source => "puppet:///puppetfiles",
		notify => Exec['switch'],
	}

	exec { 'switch':
	command => 'cmd /k "runStartup.bat"',
	cwd =>  'C:/puppet/build-scripts',
	logoutput => true,
	path => $::path,
	}

}
