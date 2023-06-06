@isTest
public class AccountsBatchTest {
   @istest
   public static  void testBatch1(){
    List<account> listAcc = new list<account>();
    for (Integer i = 0; i < 900; i++) {
        account ac = new account();
        ac.Name = 'test acc ' + i;
       
        //add account to list
        listAcc.add(ac);
    }
    insert listAcc;
    Test.startTest();
 AccountsBatch  ab = new  AccountsBatch();
 Database.executeBatch(ab, 900);
test.stopTest();
list<account> allAccounts = [select id, description from account];
for (account eachacc : allAccounts) {
    Assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
}
   }
}