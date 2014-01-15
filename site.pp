import 'classes/*.pp'

class toolbox {
	
	file{ 'C:/Pupet/log.txt':
		content => ' deploy started %datetime%.',
	    }

}

node 'dev003.imqs.local' {
	include toolbox
	include deployServises	

}
