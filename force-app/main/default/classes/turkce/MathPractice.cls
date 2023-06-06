public  class MathPractice {
 public decimal practiceOne(decimal kisak,decimal uzunk) {

        decimal cevre=2*kisak+2*uzunk;
        return cevre;

    }
public Decimal practicetwo(decimal kilo,decimal boy){
   decimal vki=kilo/(boy*boy);
    return vki;

}
public Decimal practiceThree(integer a,integer b){
   decimal ortalama=(a+b)/ 2;
  return ortalama;

} 
public string practiceFour(decimal price){
 string msg;

  if (price<=0) {
    msg='hatali bir deger girdiniz';
    
    }else if(price<=49){
    msg=' Bonus kazanamadiniz';

   }else if(price<=199){
    msg=price+'$  tutarindaki alisveris karsiligi 10$ tutarinda bonus kazandiniz';

   }else if(price<=449){
    msg=price+'$  tutarindaki alisveris karsiligi 30$ tutarinda bonus kazandiniz';
    }else{
    msg=price+'$  tutarindaki alisveris karsiligi 50$ tutarinda bonus kazandiniz';
   }
  return msg;
  }

public decimal practiceFive(integer sayi, string urun){

   decimal toplamtutar; 
    switch on urun{
    when 'EKMEK' {
        toplamtutar=1*sayi;
        }
    when 'SIMIT' {
        toplamtutar=2*sayi;
            }
    when 'KEK' {
        toplamtutar=3*sayi;
        }

  }

    system.debug('Almis oldugunuz '+sayi+' adet '+ urun +' tutari '+toplamtutar+'$  dir');
   return toplamtutar;
   }
  public decimal practicesix(decimal x, decimal y,string math){

    decimal result;
    switch on math {
    when 'alan' {
      result=x*y;  
      system.debug('Dikdortgenin alani:'+result.round());
    }
    when 'cevre' {
        result=2*(x+y); 
        system.debug('Dikdortgenin cevre uzunlugu:'+result.round()); 
      }
    when else {
        system.debug('Lutfen gecerli bir islem  turu giriniz');
 
        
    }
  
  }
  return result;
 }


public string practiceSeven(decimal boy,decimal kilo){
  Decimal VKI=(kilo/boy.pow(2)).setScale(1);
  string durum;
  if (VKI<=8.4) {
    durum='zayif';
    
  }else if(VKI<=24.9){
   durum='normal';
  }else if(VKI<=29.9){
    durum='kilolu';
   }else{
    durum='yanlis boy ve kilo degerleri  girdiniz';
  }

 return durum;
 }


 public  integer practiceEight(integer x,integer y){
  integer sum= 0;
  
 
 if(x == y){
  sum=x+y;
   
  } else {
   integer b=math.max(x, y);
   integer a=math.min(x, y);
   
    for (integer i = a;   i<= b; i++) {

      sum+=i;
  } 
  
 }
 return sum;
}
 
}


