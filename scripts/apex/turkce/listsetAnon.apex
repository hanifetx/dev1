list<string> listCity = new list<string>{'Madrid','Amsterdam','Istanbul',' New York','Paris','Toronto'};
integer x=listCity.size();
system.debug(' eleman sayisi = '+x);
string y=listCity.get(0);
system.debug('ilk eleman = '+y);
string y2=listCity.get(x-1);
system.debug('son eleman = '+y2);
boolean tf=listCity.contains('Istanbul');
system.debug('listede Istanbul var mi? '+ tf);
boolean tf2=listCity.contains('Roma');
system.debug('listede Roma  var mi? '+ tf2);
string eachC='';
list<string> listCity2 = new list<string>();
For(string eachcity : listCity){
    eachC = eachcity+'City';
    ListCity2.add(eachC);
}
system.debug(' sehirler  city kelimesi ile  '+listCity2);
set<string> setCity = new set<string>();
setCity.addAll(listCity);
system.debug('setcity  => '+setCity);
setcity.remove('Paris');
system.debug('Paris elemani cikarildiktan sonra = '+setCity);
setCity.add('Istanbul');
setCity.add('Madrid');
system.debug('Sete istanbul ve Madrid kelimeleri eklendikten sonra  set deki elemanlarda herhangi bir degisiklik olmadi '+ setCity);
system.debug('SetCity set = '+setCity+ ' setCity = '+setCity.size()+ '  elemanlidir');
setCity.clear();
Boolean tf3=setCity.isEmpty();
system.debug('set bos mu? '+tf3);


Map <integer,string>  plakaMap=new Map <integer,string>{34=>'Istanbul',16=>'Bursa',35=>'Izmir'};
plakaMap.put(42,'Konya');
plakaMap.put(27,'GaziAntep');
Boolean tf=plakaMap.containsKey(34);
Boolean tf2=plakaMap.containsKey(61);
system.debug('Mapte 34 var mi? =>'+tf);
system.debug('Mapte 61 var mi? =>'+tf2);
integer sz=plakaMap.size();
system.debug('Mapimizin eleman sayisi =>'+sz);
plakaMap.remove(16);
system.debug('Guncel Map ='+plakaMap);
 
 Set<Integer> plakaSet= plakaMap.keySet();
 List<String> plakaList=plakaMap.values();
 system.debug('plakalar => '+plakaSet);
  system.debug('Sehirler => '+plakalist);

  for(integer eachP : plakaSet){
  string sehir=plakaMap.get(eachP);
  system.debug(eachP +'  Plakali sehrimiz '+sehir+' \''+'dir.');


  }




