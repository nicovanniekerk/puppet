
class toolbox {
	
	file{ "/etc/puppet/puppetfiles":
    mode => 440,
    owner => root,
    group => root,
    source => "puppet://puppetmaster.example.org/media/puppetfiles/puppetfiles"

	    }

}

node 'dev003.imqs.local' {
	include toolbox

}
