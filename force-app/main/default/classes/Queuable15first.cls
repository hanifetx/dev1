public class Queuable15first implements Queueable{
  
    Public List<Account> accList = [select id, name from account where AnnualRevenue = 10000];
    public void execute(QueueableContext context){
        System.debug('Queueable first calisti..');
        List<Contact> conList = new List<Contact>();
        if (!accList.isEmpty()) {
            for (account acc : accList) {
                contact con = new contact();
                con.LastName = 'Contact ' + accList.indexOf(acc);
                con.AccountId = acc.id;
                conList.add(con);
            }
            insert conList;
        }
        // System.enqueueJob(new Queuable15second());
    }
}