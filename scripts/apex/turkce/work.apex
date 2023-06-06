aggregateResult result =[select count(id),sum(salary__c) from employee__c ];
system.debug(result);
integer x= (integer) result.get('expr0');
system.debug(x);