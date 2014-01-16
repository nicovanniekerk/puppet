import 'classes/*.pp'

class toolbox {
                
                file{ 'C:/puppet/log.txt':
                                content => ' deploy started 99/99/9999 99:99.',
                    }

}

node 'dev003.imqs.local' {
                include toolbox
                include deployServises  

}
