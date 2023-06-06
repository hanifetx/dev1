Set<Id> accIds= new Set<Id> ();
Account accl=[select id , name from account where createddate=today limit 1];
accIds.add(accl.id);
AccountHandler_assg.updateNofC(accIds );
