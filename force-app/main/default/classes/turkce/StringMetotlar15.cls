public  class StringMetotlar15 {
    public void cumleDuzenleme(){
        string cumle='  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. ';
        
        string cumle2=cumle.trim();
         System.debug(cumle);
         System.debug('cumle = ' + cumle.length());
         System.debug(cumle2);
         System.debug('cumle2 = ' + cumle2.length());
         string cumle3=cumle2.toLowerCase();
         System.debug(cumle3);

         string cumle4=cumle3.capitalize();
         System.debug(cumle4);

        string cumle5=cumle4.remove('xyz1');
        System.debug(cumle5);

        string text=cumle5.substringAfterLast(' ');
        System.debug(text);
        
    }

    public void accountIdSelect(){
  
        string accUrl = 'https://softinnovas394-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RYrs0AAD/view';

        string accUrl2 =accUrl.remove('/view');
        System.debug(accUrl2);
        string accId=accUrl2.substringAfterLast('/');
        System.debug(accId);

        integer indexNo=accUrl.indexof('0');
        string accId2=accUrl.substring(indexNo,indexNo+18 );
        system.debug(accId2);








    }





   



}