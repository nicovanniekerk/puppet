class deployServises {

	
	file{ "C:/puppet":
	ensure => 'directory'
	recurse => true,
    source => "puppet:///modules/puppetfiles",
	    }

		
	exec { 'switch':
	command => 'cmd /k "runStartup.bat"',
	cwd =>  'C:/build-scripts',
	logoutput => true,
	path => $::path
	}

}
