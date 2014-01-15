class deployServises {

	
	file{ "C:/puppet":
    source => "puppet:///puppetfiles",
	    }

		
	exec { 'switch':
	command => 'cmd /k "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput => true,
	path => $::path
	}

}
