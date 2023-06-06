public  class SoqlDemo {
    public static  void accountSOQL() {
     List<Account>  listAcc =[select id , name ,phone , website from account];
     System.debug(listAcc);
     list<contact> listcon=[select id , name ,phone  from contact];
     System.debug(listcon);

    }
    public static  void accountSOQLOneR(){
account acc=[select id , name ,phone , website from account order by createddate desc limit 1];
System.debug(acc);
string accName = acc.Name;
System.debug('NAME OF ACC IS  '+ acc.Name);
System.debug('PHONE OF ACC IS '+ acc.Phone);
System.debug('WEBSITE OF ACC IS  '+ acc.Website);
    }

    public static  void accountSOQL2() {
        List<Account>  listAcc =[select id , name ,phone , AccountNumber from account  order by createddate desc ];
        for (account eachAcc : ListAcc) {
            System.debug('each account record is '+eachAcc);
           System.debug('account name is '+eachAcc.Name);
           System.debug('account phone is '+eachAcc.phone);
           System.debug('accountnumber  is '+eachAcc.AccountNumber);

            System.debug('----------');
            
        }
}

 public static void projectSoqlFilter(){
List<salesforce_project__c> listP = [select id, name, project_name__c, status__c , description__c from salesforce_project__c where status__c = 'New'];
System.debug(listP);
System.debug(listP.size());

 }
 public static void projectSoqlFilter(string status){
    List<salesforce_project__c> listP = [select id, name, project_name__c, status__c , description__c from salesforce_project__c where status__c = :status];
    System.debug(listP);
    System.debug(listP.size());
    
     }
}