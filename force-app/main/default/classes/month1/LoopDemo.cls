public  class LoopDemo {
    public void print_int_while() {

integer i=1;
while (i<=25) {
  System.debug(i);
  i++;  
}
System.debug('after while='+i);
    }
public void print5multiple(integer n){
integer i=0;
while (i<=n) {
  integer remainder=math.mod(i, 5); 
  
  if (remainder==0) {
    System.debug(i);
    
  }
  i++;
}


}

}