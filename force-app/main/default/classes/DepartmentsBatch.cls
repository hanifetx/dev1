
public class DepartmentBatch implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
      return   database.getQueryLocator([select id,Number_of_Employees,(select id from employees__r) from Department__c]);
    }

    public void execute(Database.BatchableContext BC, List<Department__c> scopedep) {
  for (department dep : scopedep) {
    dep.Number_of_Employees=dep.employees__r.size();
    
  }
    }

    public void finish(Database.BatchableContext BC) {
    }

}
// public class DepartmentsBatch implements Database.Batchable<sObject> {

   

//     public Database.QueryLocator start(Database.BatchableContext BC) {
//         System.debug('inside start method');
//         return Database.getQueryLocator([select id,Number_of_Employees__c , (select id from employees__r) from Department__c]);

//     }

//     public void execute(Database.BatchableContext BC, List<Department__c> scopeDep) {
//         System.debug('inside execute method');
//         for (Department__c  eachDep : scopeDep) {
//             if (eachDep.Employees__r!=null) {
//                 eachDep.Number_of_Employees__c =eachDep.Employees__r.size();   
//             }
      
            
//         }
//         update scopeDep;
//     }

//     public void finish(Database.BatchableContext BC) {
//         System.debug('finished');
//     }
   

// }