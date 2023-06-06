public class LeadsBatch implements Database.Batchable<sObject> {
public Database.QueryLocator start(Database.BatchableContext BC) {
       Database.QueryLocator ldlist=Database.getQueryLocator([select id,description  from lead ]);
       return ldlist;
    }
    public void execute(Database.BatchableContext BC, List<lead> scopelead) {
        List<lead> leadlist = new List<lead>();
        for (lead  ld : scopelead) {
        if (ld.leadsource=='Web') {
            ld.Description='Updated by Scheduled batch at'+datetime.now();
            leadlist.add(ld);
}      
}

         if (!leadlist.isEmpty()) {
             update leadlist;   
}
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('Batch processed......');
    }

}
