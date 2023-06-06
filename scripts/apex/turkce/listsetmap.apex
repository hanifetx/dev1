
List<Integer> sayilar = new List<Integer>{22,16,44,5,36,99};
integer minsayi = ListSetMapCollections.minNumber(sayilar);
system.debug(minsayi);


List<Integer> sayilar2 = new List<Integer>{22,16,44,5,36,99};
integer minsayi2 = ListSetMapCollections.minNumber(sayilar2);
system.debug('en kucuk sayi sort ='+minsayi2);


List<String> kahramanlar = new List<String>{'super','bat','he','iron','spider','ant'};
list<string> list1= new List<String>();
list1=ListSetMapCollections.heros(kahramanlar);

system.debug('yeni list'+ list1);


List<Integer> numbers = new List<Integer> {22,45,11,7,8,4,35,72,33,44,67};
ListSetMapCollections.tekCiftSayilar(numbers);