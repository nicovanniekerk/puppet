
class toolbox {
	
	file{ 'C:/puppet/puppetsimple.bat':
		owner => 'developer1', group => 'Administrators',
		content => "mkdir C:/puppet/hallo",

	    }
exec {"puppet_simple":
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -file "C:/puppet/puppetsimple.bat"';}

}

node 'dev003.imqs.local' {
	include toolbox

}
