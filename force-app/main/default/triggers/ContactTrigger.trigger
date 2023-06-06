trigger ContactTrigger on contact(before insert,after insert,before update, after update,before delete,after delete, after undelete) {

if (trigger.isInsert||trigger.isUpdate||trigger.isUndelete) {
ContactTriggerHandler.rollUpSumary1(trigger.new);
    
}
if(trigger.isDelete) {
    ContactTriggerHandler.rollUpSumary2(trigger.old);
    
}
if (trigger.isBefore&& trigger.isupdate) {
    for (contact eachcon : trigger.new) {
        
    if (eachCon.lastname !=trigger.oldMap.get(eachcon.id).lastname) {
System.debug('lastName degistirildi.'+trigger.oldMap.get(eachcon.id).lastname+' '+eachcon.lastname+'  olarak degistirildi.');
        
    }
} 
}


   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    // if (trigger.isAfter&& trigger.isAfter ) {
//     ContactTriggerHandler.printLastName(trigger.new ,trigger.oldMap);
    
// }


// if (Trigger.isBefore&& Trigger.isUpdate) {
//     ContactTriggerHandler.validateContactUpdate1(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
//     ContactTriggerHandler.validateContactUpdate2(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
// }










// if(trigger.isBefore &&  trigger.isUpdate){
//     for(contact eachContact :trigger.new){
// contact oldC= trigger.oldMap.get(eachContact.id);
// if (oldC.LeadSource=='partner Referral') {
//     eachContact.addError('can not update contact if leadsource is partner referral');
    
// }


//     }


























    //     if(trigger.isInsert&& trigger.isBefore){
//         System.debug('before trigger insert');
//     }
// if(trigger.isInsert&& trigger.isAfter){
//         System.debug('after trigger insert');
//     }
// if(trigger.isUpdate&& trigger.isBefore){
//         System.debug('before trigger update');
//     }
// if(trigger.isUpdate&& trigger.isAfter){
//         System.debug('after trigger update');
//     }
// if(trigger.isdelete&& trigger.isBefore){
//         System.debug('before trigger delete');
//     }
// if(trigger.isDelete&& trigger.isAfter){
//         System.debug('after trigger delete');
//     }

// if(trigger.isUndelete&&trigger.isAfter){
//         System.debug('after trigger undelete');
//     }


// if (trigger.isBefore) {
//     System.debug(' before trigger called.');
//     if (trigger.isInsert) {
//         System.debug('before insert trigger called');
        
//     }
//     if (trigger.isUpdate) {
//         System.debug('before update trigger called');
        
//     }
// }




// if (trigger.isAfter) {
//     System.debug(' after trigger called.');
//     if (trigger.isInsert) {
//         System.debug('after insert trigger called');
        
//     }
//     if (trigger.isUpdate) {
//         System.debug('after update trigger called');
        
//     }
// }




}
