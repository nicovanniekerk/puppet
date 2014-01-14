
class toolbox {
	
	file{ 'C:/puppet/puppetsimple.bat':
		owner => 'Administrator',
		content => "cd C:/build-scripts\njruby startup_script.rb",

	    }
exec {"puppet_simple":
command => 'cmd /C  "C:/puppet/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
 