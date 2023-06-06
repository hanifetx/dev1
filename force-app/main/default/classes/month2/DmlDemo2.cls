public  class DmlDemo2 {
    public static void insertRelatedRec2() {
        Department__c d=[select id from Department__c order by createdDate desc  limit 1 ];
        Employee__c e =new Employee__c();
        e.First_Name__c='Don';
        e.Last_Name__c='Eladio';
        e.Salary__c=500000;
        e.Department__c=d.id;
        e.Country__c='Mexico';
       insert e;
       System.debug('emp '+e);

    }
    public static void bulkInserRight(){
        List<Account> listAcc =new List<Account>();
    for (Integer i = 0; i < 155; i++) {
        account ac= new account();
        ac.Name='test acc '+i;
        listAcc.add(ac);
        
    }
    if (!listAcc.isEmpty()) {
        insert listAcc;
        
    }
        
     }
     public static void bulkUpdateRight(){
        List<account> listAcc = [select id,name from account where CreatedDate=Today];
        for (account eachAcc  : ListAcc) {
            eachAcc.name=eachAcc.name+ '  v2';

            
        }
        update listAcc;
     }
     public static void accountUpdate(){
        List<account> allAccount = [select id ,name,description ,active__c from account];
        list<account> updateAccList =new List<Account>();
     
     for (account eachAcc : allAccount) {
      if (eachAcc.active__c=='No' || string.isBlank(eachAcc.active__c)) {
        eachAcc.Description='inactive';
        updateAccList.add(eachAcc);
      }

     }
     update updateAccList;
     }

    }
