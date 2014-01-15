class deployServises {
		
	exec { 'run_deploy':
	command => 'cmd /C "C:/build-scripts/runStartup.bat"';
	}
}
