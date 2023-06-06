Account ac= new account(name='Default Acc');
insert ac;
List<case> allCase = [select id, accountid from case where accountid = null];
CasesQueueable cq= new CasesQueueable(ac.id,allCase);
system.enqueueJob(cq);


