List<contact> l= new List<contact>();
contact c=new contact();
c.LastName='cnt trigger 3';
insert c;
System.debug('---------');
contact c1=new contact();
c1.LastName='cnt trigger 4';

insert c1;

List<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'test acc trigger ' + i;
    //add account to list
    listAcc.add(ac);
}
insert listAcc;