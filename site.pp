import 'classes/*.pp'

class toolbox {
                
                file{ 'C:/puppet/log.txt':
                                content => ' deploy started 17/01/2014 10:36:09.',
                    }

}

node 'dev003.imqs.local' {
                include toolbox
                include deployServises  

}
