public with sharing class SPTriggerHandler {
public static void  createDefaultTicket(List<Salesforce_Project__c> spTriggerNew) {


        List<Salesforce_Ticket__c> ListST= new List<Salesforce_Ticket__c>();
 for (Salesforce_Project__c  newSp : spTriggerNew) {
    Salesforce_Ticket__c st =new Salesforce_Ticket__c();
    st.Subject__c='Default ST';
    ST.Salesforce_Project__c=newSp.Id;
    ListST.add(st);
    
 }
 if (!ListST.isEmpty()) {
    insert ListST;
    }
 }
 public static void validate1 (List<Salesforce_Project__c> spTriggerNew,List<Salesforce_Project__c> spTriggerOld ,Map<Id,Salesforce_Project__c> spTriggerNewMap ,Map<Id,Salesforce_Project__c> spTriggerOldMap){

set<id> setSPid =new set<id>();
   for (Salesforce_Project__c newSp : spTriggerNew) {
      if (newSp.Status__c != spTriggerOldMap.get(newSp.id).Status__c&& newSp.Status__c=='Completed') {
         setSPid.add(newSp.id);
         
      }
      
   }
        List<Salesforce_Ticket__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c  in :setSPid and status__c != 'Completed'];
        for (Salesforce_Ticket__c  eachST : listST) {
         Salesforce_Project__c sp = spTriggerNewMap.get(eachSt.Salesforce_Project__c);
         sp.addError(' can  not complete project because all its tickets are not completed');
         
        }

   }
@future

   public static void updateDescriptionFuture(set<id> spIds){
      List<Salesforce_Project__c> listSP = [select id, name, description__c from Salesforce_Project__c where id in :spIds];
      for (Salesforce_Project__c eachSP : ListSP) {
         eachSp.Description__c='Updated from future .ok?';
         
      }
    update listsp;
   }
  
   

   
}

