List<string>sehirler = new List<string>{'Istanbul','New York','Toronto','London','Amsterdam','New York'};
system.debug('sehirler ='+sehirler);
set<string> ulkeler=new set<string>{'Turkey','USA','Canada','Turkey','Germany'};
system.debug('ulkeler = '+ulkeler);
set<string> sehirlerset = new  Set<String>();
sehirlerset.addAll(sehirler);
system.debug('sehirler set = '+sehirlerSet);


Map<integer,String> ogrenciMap= new Map<integer,String> ();

ogrenciMap.put(11, 'john');
ogrenciMap.put(16, 'Lisa');
ogrenciMap.put(22, 'Alperen');
ogrenciMap.put(25, 'Fatma');
ogrenciMap.put(33, 'john');
ogrenciMap.put(16, 'Mary');
system.debug('ogrenci map list ->'+ogrenciMap);

Set<Integer> ogrenciNo = new Set<Integer>();
ogrenciNo=ogrenciMap.keySet();
system.debug(ogrenciNo);
 List<string> isimList= new  List<string>();
 isimList=ogrenciMap.values();
 system.debug(isimList);
