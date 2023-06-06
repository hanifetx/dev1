account acc= new Account();
acc.name='Account Dml';
acc.AnnualRevenue=100000;
acc.Industry='Enargy';
insert acc;
contact con= new contact();
con.lastName='Contact dml';
con.accountId=acc.id;
con.leadSource='web';

account acc2=[select id from account where name='Ytest' limit 1];
Contact con2= new contact();
con2.LastName='Contact Dml 2';
con2.AccountId=acc2.id;
insert acc2;



Salesforce_Project__c sp=new Salesforce_Project__c();
sp.Project_Name__c='salesforce project dml';
sp.Status__c='New';
Salesforce_Ticket__c st =new Salesforce_Ticket__c();
st.Salesforce_Project__c=sp.id;
st.Subject__c='salesforce ticket dml';
insert st;

account acc3=[select id,name from account where name='Ytest' limit 1];
acc3.name='ztest';
update acc3;

list<Account> accList =[select id, name,annualRevenue,description  from account where annualRevennue != null order by annualRevenue desc limit 5];
 for(account acc: accList ){
    acc.Description = date.today() + ' itibariyle bu sirket yillik cirosu en yuksek olan 5 sirketten biri';
}
update accList;


// 5 tane Account create edin ve her accounta bagli 5 tane de opportuniy olsun.
List<Account> accList2 = new List<Account>();
for (Integer i = 1; i <= 5; i++) {
    account acc = new account();
    acc.name = 'Dml Demo Account ' + i;
    accList2.add(acc);
    //insert acc; for dongusu icinde dml yapilmaz..
}
insert accList2;

List<Opportunity> oppList = new List<Opportunity>();
for (account acc : accList2) {
    for (Integer i = 1; i <=5; i++) {
        Opportunity opp = new Opportunity();
        opp.Name = 'Dml Demo Opportunity ' + i;
        opp.CloseDate = date.today().addDays(30);
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.id;
        oppList.add(opp);
    }
}
insert oppList;