public class Queuable15second implements Queueable{
    //Queuable2=> Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source ni 'Partner Referral' yapın..
    Public static List<Contact> conList = [select id, leadSource from contact where accountId != null and account.annualRevenue = 10000];

    public void execute(QueueableContext context){
        System.debug('Queuable second calisti..');
        if (!conList.isEmpty()) {
            for (contact con : conList) {
                con.LeadSource = 'Partner Referral';
            }
            update conList;
        }
    }
}