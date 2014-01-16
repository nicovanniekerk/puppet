import 'classes/*.pp'

class toolbox {
	
	file{ 'C:/puppet/log.txt':
16/01/2014 03:02%
	    }
}

node 'dev003.imqs.local' {
	include toolbox
	include deployServises	

}
