class deployServises {
		
	exec { 'run_deploy':
	command => 'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe C:/build-scripts/runStartup.bat';
	}
}
