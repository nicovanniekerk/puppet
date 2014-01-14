
class toolbox {
	
	file{ 'C:/puppet/puppetsimple.bat':
		owner => developer1, group => developer1,
		content => "mkdir C:/puppet/hallo",

	    }
exec {"puppet_simple":
command => 'cmd.exe /C "C:/Temp/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
