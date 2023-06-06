Opportunity opp =new Opportunity();
opp.Name='trigger opp';
opp.StageName='prospecting';
opp.CloseDate=date.today().addDays(60);
insert opp;
opp.Name +='update';
update opp;

List<Account> accList =new List<Account>();
account acc1=new account();
acc1.Name='toyota';
accList.add(acc1);
account acc2=new account();
acc2.Name='volvo';
accList.add(acc2);
 insert accList;