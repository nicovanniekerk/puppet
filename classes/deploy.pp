class deployServises {

	exec { 'switch':
	command => 'cmd /k "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput => true,
	path => $::path,
	refreshonly => true,
	subscribe => File['C:/puppet/services/web-services-1.0.1-SNAPSHOT.zip'],
	}
		
	file{ "C:/puppet":
		recurse => true,
		source => "puppet:///puppetfiles",
	}

}
