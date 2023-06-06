public class SalesforceProjectTriggerHandler {
    public static void spCompletedstatus(List<Salesforce_Project__c> spTriggernew,
    List<Salesforce_Project__c> spTriggerold,Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap ) {
        Set<id> spIds = new Set<id>();
        for (Salesforce_Project__c sp: spTriggernew) {
            if (sp.Status__c=='Completed'&&spTriggerOldMap.get(sp.Id).Status__c !='Completed') {
          spIds.add(sp.id);
            }
            
        }
        updateTicketStatusCompleted(spIds);

    }
    @future
    private static void updateTicketStatusCompleted(Set<Id> spIds) {
        list<Salesforce_Ticket__c> listSt=[select id,statuS__c,Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in:spIds and status__c !='Completed'];
        for (Salesforce_Ticket__c  st : listSt) {
            st.Status__c='Completed';
            
        }
        update listSt;
    }   
}