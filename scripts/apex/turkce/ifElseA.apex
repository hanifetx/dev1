IfElseConditional ifc = new IfElseConditional();
string durum1 = ifc.positiveOrNegative(-111);
System.debug('sayimiz = ' + durum1);
string durum2 = ifc.positiveOrNegative(11);
System.debug('sayimiz = ' + durum2);
string durum3 = ifc.positiveOrNegative(0);
System.debug('sayimiz = ' + durum3);

IfElseConditional ifc2 = new IfElseConditional();
string sonuc1 = ifc2.notOrtalamasi(75, 95, 100);
System.debug('gecer not = ' + sonuc1);
string sonuc2 = ifc2.notOrtalamasi(175, 95, 100);
System.debug('gecer not = ' + sonuc2);

IfElseConditional ifc3 = new IfElseConditional();
string result1 = ifc3.tasKagitMakas('kagit', 'tas');
System.debug('kazanan => ' + result1);
string result2 = ifc3.tasKagitMakas('makas', 'tas');
System.debug('kazanan => ' + result2);
string result22 = ifc3.tasKagitMakas('makas', 'makas');
System.debug('kazanan => ' + result22);
string result3 = ifc3.tasKagitMakas('tornavida', 'tas');
System.debug('kazanan => ' + result3);


IfElseConditional ifc4 = new IfElseConditional();
string rs = ifc4.switchMethod('mango');
System.debug(rs);
string rs1 = ifc4.switchMethod('cucumber');
System.debug(rs1);