class deployServises {

	
	file{ "C:/puppet":
	recurse => true,
    source => "puppet:///puppetfiles",
	    }

		
	exec { 'switch':
	command => 'cmd /k "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput => true,
	path => $::path
	}

}
