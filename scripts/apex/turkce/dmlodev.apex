 List<Account> lAcc=new List<Account>();
        account acc = new account();
       acc.Name ='Assignment1';
       acc.Phone='123456';
       acc.website='a1@gmail.com';
       acc.site='x';
       lAcc.add(acc);
       account acc1 = new account();
       acc1.Name ='Assignment12';
       acc1.Phone='123456';
       acc1.website='a2@gmail.com';
       acc1.site='x';
       lAcc.add(acc1);
       insert lAcc;
       acc.Name='assignment1update';
       acc.Phone='432167';
       update acc;
       acc1.Name='assignment2update';
       acc1.Phone='432167';
       update acc1;
      delete[select id  from account order by createddate desc limit 2];
   
   list<opportunity>oppl=new  list<opportunity>();
    for(integer i=0 ;i<149;i++){
        Opportunity opp=new Opportunity();
        opp.name='Homework';
        opp.type='New customer';
        opp.stageName='Qualification';
        opp.closeDate=date.newInstance(2024, 02, 02);
        opp.description='New opportunity'+i;
        oppl.add(opp);
        }
     insert oppl;
     delete[select id from opportunity order by createddate desc limit 149];
