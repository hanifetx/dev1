public  class ForLoopDemo {
    public void print_Hello() {
 for (integer i=1;i<=10;i++) {
    System.debug('hello');
 }
    }

    public void  print_N_numbers(integer n){
string printstr='';
for (Integer i = 0; i <n; i++) {
    printstr=printstr+i+',';
}
System.debug(printstr);
    }

        public void print_N_numbers2(integer n){
            string s = 'this';
            s += ' is a string';
            for (Integer i = 0; i < n; i++) {
                s += i;
                system.debug(s);
            }
            system.debug(s);
                
        }
        public void print_N_Odd_numbers(integer startInt,integer endInt){

           for (Integer i =startInt; i < endInt; i++) {
            integer remainder=math.mod(i, 2);
            if (remainder==1) {
                System.debug(i);
                
            }
    
             }

        }

        public void forLoopExample(){

           integer no=5;
           integer fact=1;
           for (Integer i = 1; i <=no; i++) {
            fact*=i;
         
            
           }
           System.debug('Factorial of'+no+' is:'+fact);

        }
        
    
    }
