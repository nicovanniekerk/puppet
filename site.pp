
class toolbox { file { 'c:/hello.txt': content => 'Hello master!' } }

node 'dev003.imqs.local' {
	include toolbox

}
