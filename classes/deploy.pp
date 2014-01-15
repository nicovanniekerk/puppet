class deployServises {

	
	file{ "C:/puppet":
	source_permissions => ignore,
    source => "puppet:///puppetfiles",
	    }

		


}
