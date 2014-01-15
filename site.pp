import classes/

class toolbox {
	
	file{ 'C:/puppet/log.txt'
		ensure => exists
		content => ' deploy started %datetime%.'

	    }
	include deployServises	

}

node 'dev003.imqs.local' {
	include toolbox

}
