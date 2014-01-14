
class toolbox {
	
	file{ 'c:/temp/puppetsimple.bat':
		owner => administrator, group => administrator,
		content => "mkdir C:/Temp/hallo",

	    }
exec {"puppet_simple":
command => 'call "C:/temp/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
