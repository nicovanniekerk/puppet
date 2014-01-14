
class toolbox {
	
	file{ 'c:/Temp/puppetsimple.bat':
		owner => administrator, group => administrator,
		content => "mkdir C:/Temp/hallo",

	    }
exec {"puppet_simple":
command => 'call "C:/Temp/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
