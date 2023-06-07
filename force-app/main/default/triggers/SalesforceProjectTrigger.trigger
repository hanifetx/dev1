trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

    if (trigger.isAfter) {
        if (trigger.isUpdate) {
            SalesforceProjectTriggerHandler.spCompletedstatus(Trigger.new, Trigger.old, Trigger.NewMap, Trigger.OldMap);
            
        }
        
    }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    if (Trigger.isAfter && Trigger.isInsert) {
       //call future method
       system.debug('about to call future method');
       SPTriggerHandler.updateDescriptionFuture(Trigger.newMap.keySet());
       system.debug('JUST CALLED future method');

       //call handler method to insert default salesforce ticket.
       SPTriggerHandler.createDefaultTicket(Trigger.New);

   }

   if(Trigger.isBefore && Trigger.isUpdate){
       //call method to validate project completion
       SPTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
   }
}
// if(trigger.isBefore){
// if (trigger.isInsert) {
//     for (Salesforce_Project__c sp : trigger.new) {
//         sp.Project_Name__c='New Trigger project'; 
//         System.debug('project Name ='+sp.Project_Name__c);
//     }
    
// }
// }
// if(trigger.isAfter){
// if (trigger.isupdate) {
//     for (id sp2 :trigger.newMap.keySet()) {
//     System.debug('before update ='+trigger.oldMap.get(sp2).project_Name__c+' after update ='+trigger.newMap.get(sp2).project_Name__c);     
//     }
    
// }

// }


