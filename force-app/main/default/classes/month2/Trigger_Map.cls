public  class Trigger_Map {
    public static id insertSF_Project() {
 
  Salesforce_Project__c  sprjct= new Salesforce_Project__c();
  sprjct.Project_Name__c='Trigger project';
 insert sprjct;
 return sprjct.id;
 
    }

  public static void UpdateSF_project(id pId,string pName){
    Salesforce_Project__c sp=[select id, project_Name__c from Salesforce_Project__c where id=:pId];
    sp.project_Name__c=pName;
    update sp;
  }
}