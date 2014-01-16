import 'classes/*.pp'

class toolbox {
                
                file{ 'C:/puppet/log.txt':
                                content => ' deploy started 16/01/2014 16:21:03.',
                    }

}

node 'dev003.imqs.local' {
                include toolbox
                include deployServises  

}
