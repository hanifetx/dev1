ParametreliMetodlar pm = new ParametreliMetodlar ();

date dt1=date.newInstance(2022,9,11);
boolean sonuc=pm.artikyil(dt1);
System.debug(dt1.year()+'artik yil mi?'+sonuc);


integer y =pm.uzunluk('hello everyone');
system.debug(y);


pm.printWelcome();
pm.welcomePerson('Betul');
pm.welcomePerson('Ayhan');
pm.welcomePerson('Elif');
integer sum=pm.toplama(11,12);
system.debug(sum);
system.debug(pm.toplama(11,12));



