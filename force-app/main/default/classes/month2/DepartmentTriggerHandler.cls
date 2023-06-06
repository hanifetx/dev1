public  class DepartmentTriggerHandler {
    @future
    public static void   createDefaulltEmployee(Set<Id> depIds) {
        List<Employee__c> listEmp = new List<Employee__c>();
        for (id eachId : depIds) {
            Employee__c e= new Employee__c(First_Name__c='Richard',Last_Name__c='Miles',Department__c=eachId,JoinDate__c=date.today());
            listEmp.add(e);
        }
 insert listEmp;
    }
}