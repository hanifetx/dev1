public  class MyCity {
public  void stringMethod() {
 string text='I am a salesforce Developer';


 boolean force=text.contains('force');
 System.debug('Cumlemizde force kelimesi varmi: '+ force);

  integer nmbr=text.length();
  System.debug('Cumledeki karakter sayisi: '+nmbr);

  string bh=text.toUpperCase();
   System.debug('Cumlenin yeni hali: '+bh);

}

public void printstring(integer n,string msg){
   string text;
    for (Integer i = 1; i <= n; i++) {
  
      text=msg+''+i;
      
      system.debug(text);
    }

}
}