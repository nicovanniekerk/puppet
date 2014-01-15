class deployServises {

	exec { 'switch':
	command => 'cmd /k "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput => true,
	path => $::path,
	refreshonly => true,
	subscribe => File['C:/puppet/build-scripts/runStartup.bat'],
	}
		
	file{ "C:/puppet":
		recurse => true,
		source => "puppet:///puppetfiles",
	}

}
