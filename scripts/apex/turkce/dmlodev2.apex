account acc=new account();
acc.name='Summer Fest LLC';
acc.type='Technology Partner';
acc.Rating='Hot';
acc.AnnualRevenue=200000000;
account ac =[select id from account where name='University of Arizona' limit 1];
acc.parentId=ac.id;
insert acc;


list<contact> lcon= new list<contact> ();
for (Integer i = 1; i <=3; i++) {

Contact con =new contact();
    con.LastName='Event Planner'+i;
    con.phone='+1234567896';
    con.accountId=acc.id;
    con.LeadSource='web';
    lcon.add(con);
    
}
     insert lcon;