// date mybirthday=date.newInstance(1985,8,3);
// system.debug('my birthday date: '+mybirthday);
// integer year=mybirthday.year();
// integer month=mybirthday.month();
// integer day=mybirthday.day();
// system.debug('1985'+'+'+'8'+'+'+'3'+'='+(year+month+day));

date mcbirthdaydate=date.newInstance(1867,11,7);
date todaydate=date.today();
system.debug('Marie Curie\'nin  dogum tarihi: '+mcbirthdaydate);
integer frkday=mcbirthdaydate.daysBetween(todaydate);
System.debug('Farkin gun dikkate alinarak hesaplanmasi :'+frkday);

integer frkmonth=mcbirthdaydate.monthsBetween(todaydate);
System.debug('Farkin ay dikkate alinarak hesaplanmasi: '+frkmonth);

integer x=mcbirthdaydate.year();
Integer y=todaydate.year();
system.debug('Farkin yil dikkate alinarak hesaplanmasi: '+(y-x));
boolean cvp=date.isLeapYear(x);
system.debug('Marie Curie\'nin  dogum tarihi artik yil mi?: '+ cvp);


