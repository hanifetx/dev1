public  class SoqlDemo4 {
    public static void groupByQuery() {
        List<AggregateResult> result = [select country__c, count(id), sum(salary__c) from Employee__c group by Country__c];
        for (AggregateResult  ar: result) {
            System.debug('country name '+ar.get('country__c'));
            System.debug('number of employee '+ar.get('expr0'));
            System.debug('total salary'+ar.get('expr1'));
        }

    }
    public static void accdynamicSoqry1(string accFieldNames){
 string query =  ' select ';
query = query + accFieldNames;
query +=  ' from account';
System.debug(' final query is:'+ query);
List<Account> listAcc = database.query(query);
for (account eachAcc : listAcc) {
    System.debug(eachAcc);
    
}

    }
}