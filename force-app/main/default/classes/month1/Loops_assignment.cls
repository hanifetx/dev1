public  class Loops_assignment {
    public integer whileLoopMethod(integer n) {
        integer i=1;
        while ( i<=n) {
        System.debug(i);
         i++;   
        }
        return i;
}
public void printEven(){
    for (Integer i = 1; i < 100; i++){
    
    integer remainder=math.mod(i, 2);
    if (remainder==0) {
        System.debug(i);
        }
        }
    }
    public integer printpower(integer n){
    integer pwr=1;
        for (Integer i = 1; i <= n; i++){
         pwr*=n ;
       }
      return pwr;
}
}