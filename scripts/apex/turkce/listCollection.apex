List<string> isimList = new List<string>();
isimList.add('Efe');
isimList.add('pinar');
isimList.add('Seyma');
isimList.add('Zulal');
isimList.add('Ayse');
System.debug('isim listesi => ' + isimList);

System.debug(isimList.get(2));
System.debug(isimList[2]);


List<string> alisverisList = new List<string>{'kalem', 'silgi', 'defter', 'cetvel'};
System.debug(alisverisList);
alisverisList.add('pergel');
alisverisList.add('kalemtras');
System.debug(alisverisList);

Boolean isThere = alisverisList.contains('zimba');
if (!isThere) {
    alisverisList.add('zimba');
}
System.debug(alisverisList);
integer elemansayisi = alisverisList.size();
System.debug('=======listenin her elemaninin yazilisi=======');
for (Integer i = 0; i < elemansayisi; i++) {
    System.debug(alisverisList.get(i));
}

System.debug('======listenin elemanlarinin tersten yazilisi=======');
for (Integer i = elemansayisi-1; i >= 0; i--) {
    System.debug(alisverisList.get(i));
}
