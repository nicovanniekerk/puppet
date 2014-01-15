class deployServises {

		file { 'C:/puppet/start.bat':
			content => 'cd C:/build-scripts\nrunStartup.bat',
		}
		
	exec { 'run_deploy':
	command => 'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe start.bat';
	}
}
