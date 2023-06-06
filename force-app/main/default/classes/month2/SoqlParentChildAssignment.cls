public  class SoqlParentChildAssignment {
    public static void printContactAccounts(){
        List<Contact>lstcontact =[select id, name,Account.Id,Account.Name from Contact];
        for (Contact EachContact : lstcontact) {
            System.debug('Contact name ='+eachContact.Name+' . its account Id is '+EachContact.Account.Id+' its acca name is '+EachContact.Account.Name);
            
        }
    }
    public static void printAccountContacts(){
        List<Account> lstAccount =[select Id, name,(select Id, name from Contacts) from Account];
        for (account eachAcc : lstAccount) {
            System.debug('Acc name = '+eachAcc.Name);
            for (contact  eachContact : eachAcc.contacts) {
                System.debug('--contact Id = '+eachContact.Id +' ,contact Name = '+eachContact.name);
                
            }
            
        }
    }
}
