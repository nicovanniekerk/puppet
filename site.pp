

class showmessage {
		file {'/usr/local/sbin/message.sh':
		owner => root, group => root, mode => 0755,
		content => "echo 'SUP MOTHER FUCKER!!bitch' >> new.txt",
		}
}


class showmessagees {
		file {'/usr/local/sbin/messagees.sh':
		owner => root, group => root, mode => 0755,
		content => "echo 'SUP MOTHER FUCKER!!bitch' >> new.txt",
		}
}



class toolbox {
	
	file{ '/usr/local/sbin/puppetsimple.sh':
		owner => root, group => root, mode => 0755,
		content => "mkdir /etc/puppet/gitfiles/\ncd /etc/puppet/gitfiles/\ngit init\ngit pull https://github.com/nicovanniekerk/puppet_testing.git",

	    }
exec {"puppet_simple":
command => '/bin/sh -c "/usr/local/sbin/puppetsimple.sh"';}

}

node 'ubuntu.imqs.local' {
	include showmessage
	include showmessagees
	include toolbox

}
