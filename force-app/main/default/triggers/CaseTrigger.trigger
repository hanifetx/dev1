trigger CaseTrigger on case (before insert) {
    System.debug('before insert case trigger');
    // integer recordCount=0;
   CaseTriggerHandler.recordCount +=trigger.size;
System.debug('number of records processed '+CaseTriggerHandler.recordCount);
CaseTriggerHandler.triggerCount++;
System.debug('number of records processed'+CaseTriggerHandler.triggerCount);

}