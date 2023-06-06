public  class AccountHandler_assg {
//  public static void uniqueName(List<account> accTriggerNew, List<Account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
// List<Account> name=[select id, name from account];
// for (Account acc : name) {
// for (account eachAcc : accTriggerNew) {
// if (acc.name==eachAcc.name) {
//  eachAcc.Name.addError('duplicate name!!!') ;  
// }
    
// }

//  }
@future
public static void updateNofC(Set<Id> accIds){
    List<Account> accl=[select id, name,Number_of_contacts__c ,(select id,lastName from contacts ) from account where id in:accIds];
    for (account acc : accl) {
        acc.number_of_contacts__c=acc.contacts.size();
        
    }
    update accl;

}




 }    





















//    public static void createOPPCon(List<account> accTriggerNew, List<Account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
//     list<contact> conlist=new list<contact>();
//     list<opportunity>opplist =new list<opportunity>();
//     for (account  eachAcc : accTriggerNew) {
//         contact con =new contact();
//         con.LastName='trigger contact';
//         con.AccountId=eachAcc.id;
//         conlist.add(con);

//         Opportunity opp=new opportunity();
//         opp.name='trigger opportunity';
//         opp.AccountId=eachAcc.id;
//         opp.CloseDate=date.today().adddays(5);
//         opp.StageName='prospecting';
//         opplist.add(opp);
// }
    
// if (!opplist.isEmpty()) {
//     insert opplist;
// }
// if (!conlist.isEmpty()) {
//     insert conlist;
// }      
//     }


   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//     public static void createcontact(List<account> accTriggerNew, List<Account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
// list<contact> conlist=new list<contact>();
// for (account  eachAcc : accTriggerNew) {
//     contact con =new contact();
//     con.LastName=eachAcc.Name;
//     con.AccountId=eachAcc.id;
//     conlist.add(con);
// }
// if (!conlist.isEmpty()) {
//     insert conlist;
    
// }

//     }

    
// }