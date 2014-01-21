import 'classes/*.pp'

class toolbox {
                
                file{ 'C:/puppet/log.txt':
                                content => ' deploy started 21/01/2014 08:31:34.',
                    }

}

node 'dev003.imqs.local' {
                include toolbox
                include deployServises  

}
