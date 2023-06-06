trigger DepartmentTrigger on Department__c (before insert, after insert) {
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     //call future method to create default employee.
    //     DepartmentTriggerHandler.createDefaulltEmployee(trigger.newMap.keyset());
    // }
}