import 'classes/*.pp'

class toolbox {
	include deployServises	
	
	file{ 'C:/puppet/log.txt':
		ensure => exists,
		content => ' deploy started %datetime%.',
	    }

}

node 'dev003.imqs.local' {
	include toolbox

}
