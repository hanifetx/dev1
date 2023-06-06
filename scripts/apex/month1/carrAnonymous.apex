// Carrr  bmw=new Carrr();
// bmw.details();
// Carrr  ford=new Carrr();
// ford.details();
Carrr  bmw=new Carrr('BMW X3');
bmw.details();
 Carrr ford=new Carrr();

System.debug(ford);
 ford.details();
Carrr  bmw2=new Carrr('BMW X3','abc10001','Black',2020,45000);
bmw2.details();

Carrr  bmw2=new Carrr('BMW X3','abc10001','Black',2020,45000);

Carrr ford2=new carrr('ford','abc1002','red',2023,55000);


string ford2Name=ford2.name;
string ford2color=ford2.color;
integer x=ford2.mfgYear;
system.debug('ford 2 name and color '+ford2Name+' , '+ford2color+x);


ford2.name='Ford  focus';
ford2.color='silver';
ford2.details();
