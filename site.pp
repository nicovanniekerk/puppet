

class showmessage {
		file {'/usr/local/sbin/message.sh':
		owner => root, group => root, mode => 0755,
		content => "echo 'SUP MOTHER FUCKER!!!!!!!!!!!!dvskljxncv.,mxncvk;xnjdgfxzc.vnx cvkn\nljz\xdbnfxz\,m' >> new.txt",
		}
}



class toolbox {
	
	file{ '/usr/local/sbin/puppetsimple.sh':
		owner => root, group => root, mode => 0755,
		content => "mkdir /etc/puppet/gitfiles/\ncd /etc/puppet/gitfiles/\ngit init\ngit pull https://github.com/nicovanniekerk/puppet_testing.git",

	    }
exec {"puppet_simple":
command => '/bin/sh -c "/usr/local/sbin/message.sh"';}

}

node 'ubuntu.imqs.local' {
	include showmessage
	include toolbox

}
