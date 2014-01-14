
class toolbox {
	
	file{ 'C:/puppet/puppetsimple.bat':
	owner => Administrator,
		content => "cd C:/build-scripts\nrunStartup.bat",

	    }
exec {"puppet_simple":
command => ' Start-Process C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe  -verb runAs "C:/puppet/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
