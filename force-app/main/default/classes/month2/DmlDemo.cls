public class DmlDemo {
    public static void dmlInsertDemo1() {
       
         account acc = new account();
         acc.Name = 'Salesforce';
         acc.website = 'www.salesforce.com';
 
      
         insert acc;
         system.debug('inserted acc: ' + acc);
    }
 
    public static void dmlInsertDemoCO1() {
      
         Department__c d = new Department__c();
         

         d.Name__c = 'Human Resource';
         d.Short_Code__c = 'HR';
       
         insert d; 
    }

    public static void insertemployee(){
     Employee__c  Emp = new Employee__c();
     Emp.First_Name__c='Tom';
     Emp.Last_Name__c='Doe';
     Emp.country__c='USA';
     Emp.JoinDate__c=date.newInstance(2023, 05, 04);
     Emp.email__c='tom@gmail.com';
     Emp.Salary__c=55000.00;
     
     insert emp;
     System.debug(emp);


    



    }

 





    public static void dmlInsertDemoCO2() {
        
         Salesforce_Project__c sp = new Salesforce_Project__c();
         sp.Project_Name__c = 'Learn DML';
         sp.Status__c = 'New';
 
         insert sp;
    }
 
    public static void dmlUpdateDemo1() {
       
         account acc = new account();
         acc.Name = 'Softinnovas';
         system.debug('before insert DML: ' + acc);
         insert acc;
         system.debug('after insert DML: ' + acc);
 
         acc.Name = 'Softinnovas INC.';
         acc.Website = 'www.softinnovas.com';
 
         update acc;
         system.debug('after update dml: ' + acc);
    }

    public static void dmlUpdateDemo2(){
        account acc = [select id, name from account order by createddate desc limit 1];
        acc.name='softinnovas Inc.';
        // System.debug('website : '+acc.Website);
        update acc;
    }
    public static void dmlInsertDemo3(){
      
        account acc = [select id, name from account order by createddate desc limit 1];

        contact c = new contact();
        c.lastname = 'Biden';
      
        c.accountid = acc.id; 

        insert c;
   }
}