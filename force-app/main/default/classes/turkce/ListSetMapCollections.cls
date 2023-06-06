public class ListSetMapCollections {
public static List<String> heros(List<String> herolist){
 List<string> updateHeroList = new List<string>();
 if (!heroList.isEmpty()) {
 for (string eachHero : herolist) {
    string addMan;
if (eachHero=='he') {
    addMan=eachHero + '-man';
        
    }else{
        addMan=eachHero + 'man';



    }
    updateHeroList.add(addMan);
    
 }

    
}
return updateHeroList;

 }

public static  integer minNumber(List<Integer> sayilist){
integer minNum;
if (!sayilist.isEmpty()) {
    minNum=sayilist.get(0);
    for (Integer sayi : sayilist) {
        if (sayi<minNum) {
            minNum = sayi;
            
        }
        
    }
   
    
}
return minNum;

}
 
public static  integer minNumber2(List<Integer> sayilist){
Integer minNum;
System.debug('ilk liste ='+sayilist);
sayilist.sort();
System.debug('sort metodundan sonra liste = '+sayilist);
minNum=sayilist.get(0);

return minNum;

}

public static void tekCiftSayilar(List<Integer> sayilar) {

    List<Integer> tekSayilar=new List<Integer> ();
    
    List<Integer> ciftSayilar=new List<Integer> ();
    if (!sayilar.isEmpty()) {
        for (integer sayi : sayilar) {
            Integer kalan =math.mod(sayi, 2);
            if (kalan==1) {
                teksayilar.add(sayi);
                
            }else{
                ciftSayilar.add(sayi);
            }
            
        }
        System.debug('tek sayilar'+ tekSayilar);
        System.debug('cift sayilar'+ ciftSayilar);

        Integer tekmin=minNumber(tekSayilar);
        System.debug('en kucuk tek sayi = '+tekmin);
        Integer ciftmin=minNumber(ciftsayilar);
        System.debug('en kucuk tek sayi = '+ciftmin);
    }
    }
   

    
}



    
