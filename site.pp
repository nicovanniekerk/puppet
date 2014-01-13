

class toolbox {
	
	file{ '/usr/local/sbin/puppetsimple.sh':
		owner => root, group => root, mode => 0755,
		content => "mkdir /etc/puppet/govrek",

	    }
exec {"puppet_simple":
command => '/bin/sh -c "/usr/local/sbin/puppetsimple.sh"';}

}

node 'ubuntu.imqs.local' {
	include toolbox

}
