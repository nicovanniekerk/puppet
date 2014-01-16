import 'classes/*.pp'

class toolbox {
	
	file{ 'C:/puppet/log.txt':
16/01/2014 15:07%
	    }
}

node 'dev003.imqs.local' {
	include toolbox
	include deployServises	

}
