public  class AccountUpdateHelper {
    @InvocableMethod
   
    public static void updateAccountHelper(list<id> accIds) {
        List<account> accountToUpdate = new List<account>();
        list<Account> accList=[select id,name,website from account where id in :accIds];
        for (Account eachAcc  : accList) {
            eachAcc.Website='www.softinnovasbatch15.com';
              accountToUpdate.add(eachAcc);
            
        }
        if (!accountToUpdate.isEmpty()) {
            update accountToUpdate;
            
        }

    }
}