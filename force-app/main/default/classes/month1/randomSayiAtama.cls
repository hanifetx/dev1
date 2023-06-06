public  class randomSayiAtama {
    
    public static integer oyunSayisi=0;
    public static integer skorum=0;
    public static string randomNumber(integer sayi) {
        integer bilgisayarSayisi=math.round(Math.random()*10);
        string message;
        if(sayi>=0 && sayi<=10){
            oyunSayisi++;
            System.debug('----'+oyunSayisi+'----');
            if (bilgisayarSayisi==sayi) {
                skorum++;
                message='dogru tahmin';
                
            }else{
                message='yanlis tahmin';
            }


        }else{
            message='lutfen 0\'dan 10\'a kadar bir sayi giriniz';
        }

        System.debug('bilgisayarin sayisi'+bilgisayarSayisi);
        System.debug('benim sayim= '+sayi);
        System.debug(oyunSayisi+'oyun oynadiniz. dogru tahmin'+skorum);
        return message;

    }
}