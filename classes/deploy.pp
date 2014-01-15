class deployServises {

	
	file{ "C:/puppet":
	recurse => true,
    source => "puppet:///puppetfiles",
	    }

	
		


}
