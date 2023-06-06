public  class SoqlAssignment1 {
    public static void topEmployes() {
        list<employee__c> emp = [select id, first_name__c,last_name__c,salary__c from employee__c order by salary__c desc limit 5];
      integer count=0;
        for (employee__c eachE : emp) {
        count++;
            System.debug(count+'. employee= '+eachE.first_name__c+ ' '+eachE.last_name__c+ ' => salary = ' +eachE.salary__c);
            
        }

    }
    public static void mostPopulated(){
        list<aggregateResult> emp = [select count(id), country__c from employee__c group by country__c order by count(id) desc limit 1];
        for (aggregateResult eachA : emp) {
            System.debug('most populated country =>'+eachA.get('country__c'));
            
        }


    }
}