
class toolbox {
	
	file{ 'c:/temp/puppetsimple.bat':
		owner => root, group => root, mode => 0755,
		content => "mkdir C:/temp/hallo",

	    }
exec {"puppet_simple":
command => 'call "C:/temp/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
