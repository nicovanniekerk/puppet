class deployServises {

	file{ "C:/puppet":
		recurse => true,
		source => "puppet:///puppetfiles",
		notify => Exec['switch'],
	}

	exec { 'switch':
	command => 'cmd /k start "C:/build-scripts/runStartup.bat"',
	logoutput => true,
	path => $::path,
	}

}
