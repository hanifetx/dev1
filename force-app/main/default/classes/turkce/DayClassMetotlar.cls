public  class DayClassMetotlar {
    public void tarihOlusturma() {
date date1=date.newInstance(2019,5,5);
integer yil=2000;
integer ay=3;
Integer gun=17;
date date2=date.newInstance(yil,ay,gun);
System.debug(date2);
    }
public void tarihmesaji(){
   date bugun=Date.today();
   integer yil1=bugun.year();
   integer ay1=bugun.month();
   integer gun1=bugun.day();
   date yeniyil=date.newInstance(2023,12,31);
   integer kalangun=bugun.daysBetween(yeniyil);
   string mesaj = yil1 + ' yilinin ' + ay1 + '. ayinin ' 
   + gun1 + '. gunundeyiz. Yeni yila ' + kalangun+ 
   ' gun var..';
   System.debug(mesaj);
   integer kacinciGun=bugun.dayOfYear();
   integer kalanGunSayisi2=365-kacinciGun;
   string mesaj2 = yil1 + ' yilinin ' + ay1 + '. ayinin ' 
   + gun1 + '. gunundeyiz. Yeni yila ' + kalanGunSayisi2+ 
   ' gun var..';
   System.debug(mesaj2);

}



}