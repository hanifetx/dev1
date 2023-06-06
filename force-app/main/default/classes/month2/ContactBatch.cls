public class ContactBatch implements Database.Batchable<sObject> {
  
    public database.QueryLocator start(Database.BatchableContext bc) {
    Database.QueryLocator con= database.getQueryLocator([select id,lastname,description from contact]);
    return con;

  }
  public void excute(Database.BatchableContext bc,list<contact> listcon){
    list<contact> listconUpdate=new  list<contact>();
    for(contact con:listcon){
        eachCon.description='Updated by batch';
        listconUpdate.add(con);
    }
    update listconUpdate;

  }
  public void  finish(Database.BatchableContext bc){
  System.debug('Batch over');
}
}