public class SoqlDemo3 {
    //opportunity, and we will get account name, industry field
    public static void oppAccQuery() {
        list<Opportunity> listOpp = [select id, name, amount, account.name, account.industry from opportunity where account.industry = 'energy'];

        for (Opportunity eachOpp : listOpp) {
            system.debug('opp name is ' + eachOpp.Name + ', opp amount is ' + eachOpp.Amount);
            system.debug('account name is ' + eachOpp.account.Name + ' industry is ' + eachOpp.account.Industry);
            system.debug('----');
        }
    }

    public static void accContactQuery() {
        list<account> listAcc = [select id, name, website, (select name, email from Contacts) from account];
        //each account name
            //all its contact name and email
            //if no contact, no contact found

        for (account eachAcc : listAcc) {
            system.debug('each acc is ' + eachAcc.Name);
            list<contact> accContacts = eachAcc.Contacts;
            if (!accContacts.isEmpty()) {
                system.debug(eachAcc.Name + ' account has ' + accContacts.size() + ' contacts');
                for (contact eachContact : accContacts) {
                    system.debug('contact name is ' + eachContact.Name + ', email is ' + eachContact.Email );
                }
            } else {
                system.debug('*** NO contact found for this account ***');
            }
            

            system.debug('-----');
            
        }
    }
    public static void deptmentDetails(){
list <department__c>  listDept =[SELECT Name__c, (SELECT first_name__c, last_name__c, country__c, salary__c FROM employees__r) FROM Department__c];
decimal totalSalary=0;
for (department__c   eachDept : ListDept) {
    System.debug('dept name is '+eachDept.name__c);
    List<Employee__c> listEmp=eachDept.employees__r;
 decimal deptSalary=0;
    for (employee__c  eachEmp:  ListEmp) {
        System.debug('----Name is '+eachEmp.first_name__c+' '+eachEmp.last_name__c+'country is'+eachEmp.country__c);
        deptSalary +=eachEmp.salary__c;
        totalSalary +=eachEmp.salary__c;
        
    }
    System.debug('deptSalary '+deptSalary);
}
System.debug('total salary '+totalSalary);
    }


}