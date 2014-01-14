
class toolbox {
	
	file{ 'C:/puppet/puppetsimple.bat':
		owner => 'developer1', 
		content => "cd C:/build-scripts\njruby startup_script.rb",

	    }
exec {"puppet_simple":
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe  "C:/puppet/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
