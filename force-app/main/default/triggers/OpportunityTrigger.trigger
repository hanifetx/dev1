trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, after delete) {
    //soru : Bir opportunity nin Amount update edildiğinde, amount olan bir opportunity create edildiginde veya amount olan bir opportunity record silindiginde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
    if (trigger.isAfter) {
       // 1. asama insert durumu
       if (trigger.isInsert) {
           OpportunityTriggerHandler.insertMetot(trigger.new);
           //OppTriggerHandler.insertMetot(trigger.new);
       }
       // 2. asama update durumu
       if (trigger.isUpdate) {
           OpportunityTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
           //OppTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
       }
       // 3 asama delete durumu
       if (trigger.isDelete) {
           OpportunityTriggerHandler.deleteMetot(trigger.old);
           //OppTriggerHandler.deleteMetot(trigger.old);
       }
    }
    
    
   }




    // //     if(trigger.isInsert){
// //         if (trigger.isBefore) {
// //             System.debug('insert before ic ice 2 if....');
            
// //         }
// //     }

// // if(trigger.isInsert&&trigger.isAfter){
// //     System.debug('insert after tek if...');
// // }
 
// if(trigger.isInsert&&trigger.isBefore){
//     System.debug('=========before insert  trigger tetiklendi===========');
//     System.debug('trigger new = '+trigger.new);
//     for (Opportunity op : trigger.new) {
//         System.debug('opportunity name = '+op.name);
//         System.debug('id = '+op.id);
//         System.debug('createddate = '+OP.CreatedDate);
        
//     }
//     System.debug('trigger old = '+trigger.old);
//     System.debug('trigger new map = '+trigger.newMap);
//     System.debug('trigger old map = '+trigger.oldMap);
//     System.debug('==============================');
// }
// if(trigger.isInsert&&trigger.isAfter){
//     System.debug('=========after insert trigger tetiklendi===========');
//     System.debug('trigger new = '+trigger.new);
//     for (Opportunity op : trigger.new) {
//         System.debug('opportunity name = '+op.name);
//         System.debug('id = '+op.id);
//         System.debug('createddate = '+OP.CreatedDate);
        
//     }
//     System.debug('trigger old = '+trigger.old);
//     System.debug('trigger new map = '+trigger.newMap);
//     System.debug('trigger old map = '+trigger.oldMap);
//     System.debug('==============================');
// }
// if(trigger.isUpdate&&trigger.isbefore){
    
//     System.debug('trigger old = '+trigger.old);
//     System.debug('trigger new map = '+trigger.newMap);
//     System.debug('trigger old map = '+trigger.oldMap);

//     System.debug('=========before update trigger tetiklendi===========');
   
// }
// if(trigger.isUpdate&&trigger.isAfter){
//     System.debug('trigger old = '+trigger.old);
//     System.debug('trigger new map = '+trigger.newMap);
//     System.debug('trigger old map = '+trigger.oldMap);
//     System.debug('=========after update trigger tetiklendi===========');
// }

