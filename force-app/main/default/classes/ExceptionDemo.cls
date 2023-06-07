public class ExceptionDemo {
    public static void Demo1(string str) {
        try{
            string str2=str.toUpperCase();
            System.debug('str2 is '+str2);
        }catch(NullPointerException nullex){
           System.debug('str is NULL so we cannot convert  to uppercase'); 
          System.debug('exception: '+nullex);

        }
       
        System.debug('code completed.');
    }
}