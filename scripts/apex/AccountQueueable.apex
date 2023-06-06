
List<account> allacc = [select id, name from account where createdDate = last_month];
AccountQueueableExample aq = new AccountQueueableExample(allacc);
Id jobId = system.enqueueJob(aq); 

AsyncApexJob ap = [SELECT Status, JobType, JobItemsProcessed, Id, MethodName, NumberOfErrors FROM AsyncApexJob where id = :jobId];
system.debug(ap);