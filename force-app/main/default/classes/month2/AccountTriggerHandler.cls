public class AccountTriggerHandler {

public static void updateAccDescription(List<account> accTriggerNew, List<Account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        
        for(account eachAcc: accTriggerNew){
            
            boolean updateDesc = false;
            if(Trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
         
            if(Trigger.isUpdate){
               
                if(eachAcc.Active__c != accTriggerOldMap.get(eachAcc.id).Active__c && eachAcc.Active__c == 'Yes'){
                   updateDesc = true;
                }
            }
            
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy buddy!';
            }
        }
    }

    public static void updateVIPContacts(List<account> accTriggerNew, List<Account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

            set<id> accIds = new set<id>();
            for (account newAcc : accTriggerNew) {
                //check if VIP is changed
                if (newAcc.vip__c != accTriggerOldMap.get(newAcc.id).VIP__c) {
                    accIds.add(newAcc.Id);
                }
            }

            
            if(!accIds.isEmpty()){
                //GET all contacts of all those account where VIP is changed, and set the NEW VIP value
                list<contact> listContacts = [select id, name, vip__c, accountid from contact 
                                where accountid in :accIds and leadSource != 'Partner Referral']; 
                for (contact eachContact : listContacts) {
                    //eachContact.vip__c = account's vip field
                    //how to get this contact's account's VIP field 
                    boolean accVIP = accTriggerNewMap.get(eachContact.accountid).vip__c;
                    eachContact.vip__c = accVIP;//set contact's vip field same as account's vip field.
                }
                update listContacts;
            }   
    }

    //just accepting trigger.old.
        //we don't need trigger.oldMap. 
    public static void validateDelete(List<account> accTriggerOld) {
        for (account oldAcc : accTriggerOld) {
            if (oldAcc.active__c == 'Yes') {
                oldAcc.addError('Cannot delete active account.');
            }
        }
    }

    public static void sendRestorationEmail(List<account> accTriggerNew) {
        List<Messaging.SingleEmailMessage> listMessages = new List<Messaging.SingleEmailMessage>();
        for (account newAcc : accTriggerNew) {

            //prepare list of email address where we want to send email message
            List<string> emailAddress = new list<string>();
            emailAddress.add(UserInfo.getUserEmail());

            //Prepare ONE email message.
            Messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
            //set email address list where we want to send email
            msg.setToAddresses(emailAddress);
            msg.setSubject('Account successfully restored: ' + newAcc.name);
            msg.setPlainTextBody('Hello Hello, account is restored successfully. ');
            //add single email to LIST of emails
            listMessages.add(msg);
        }
        Messaging.sendEmail(listMessages);
    }

}














// public with sharing class AccountTriggerHandler {
//     public static void updateAccDescription(List<Account> accTriggerNew,List<Account> accTriggerNew,Map<Id,account> accTriggerNewMap,Map<Id,account> accTriggerNewMap) {
//         if (trigger.isBefore) {
 
//             for(account eachAcc: Trigger.new){
//                 Boolean updateDesc=false;
//                 if (trigger.isInsert && eachAcc.active__c=='Yes') {
//                   updateDesc =true;  
//                 }
//               if (trigger.isUpdate) {
//               if (eachAcc.Active__c != trigger.oldMap.get(eachAcc.id).Active__c && eachAcc.Active__c == 'Yes'){
//                 updateDesc =true;  
//               }
//             if (updateDesc) {
//                 eachAcc.Description='Account is now active.';    
//             }
                
        
        
               
//             }
           
//         }
//         }
//     }
// }