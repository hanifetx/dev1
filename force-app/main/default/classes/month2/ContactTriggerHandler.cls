public  class ContactTriggerHandler {

public static void validateContactUpdate1(list<contact > cTriggerNew,list<contact > cTriggerOld,Map<Id, contact> cTriggerNewMap ,Map<Id, contact> cTriggerpOldMap) {
        for (Contact newContact: cTriggerNew) {
          Contact oldContact =cTriggerpOldMap.get(newContact.Id);
          if (oldContact.LeadSource=='Partner Referral') {
            
            newContact.addError('Can not update contact with lead source as partner Referral');
          }
        }

    }




    public static void validateContactUpdate2(list<contact > cTriggerNew,list<contact > cTriggerOld,
    Map<Id, contact> cTriggerNewMap ,Map<Id, contact> cTriggerpOldMap) {
 for(contact  newContact :cTriggerNew){
if (newContact.LeadSource !=cTriggerpOldMap.get(newContact.id).LeadSource) {

  newContact.LeadSource.addError('can not update leadSource');
  
}
}

 }

public static void rollUpSumary1(list<contact> ctriggerNew){
  set<id> accId= new set<id>();
  for (Contact  cn : ctriggerNew) {
    if (cn.AccountId !=null) {
      accid.add(cn.accountId);
     }
   
  }
  List<Account> aList=[select id,Number_of_contacts__c,(select id from contacts) from account where id in:accId];
    list<account>accList=new  list<account>();
    for (account acc : aList) {
      account newA= new Account(Id=acc.id,number_of_contacts__c=acc.contacts.size());
  
      accList.add(newA);
    }
    update accList;
  }
  

public static void rollUpSumary2(list<contact> ctriggerOld){
  set<id> accId= new set<id>();
  for (Contact  cn : ctriggerOld) {
    if (cn.AccountId !=null) {
      accid.add(cn.accountId);
      
    }
  }
    
    List<Account> aList=[select id,Number_of_contacts__c,(select id from contacts) from account where id in:accId];
    list<account>accList=new  list<account>();
    for (account acc : aList) {
      account newA= new Account(Id=acc.id,number_of_contacts__c=acc.contacts.size());
  
      accList.add(newA);
    }
    update accList;
  }
  
}



