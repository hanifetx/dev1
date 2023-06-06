@istest
public class BatchApex15Test {
   @TestSetup
   static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i = 1; i <= 950; i++) {
            account acc = new account();
            acc.Name = 'Account ' + i;
            accList.add(acc);
        }
        insert accList;
   }
   @istest
   private static void BatchClassTest() {
        BatchApex15 b15 = new BatchApex15();
        test.startTest();
        Database.executeBatch(b15, 950);
        test.stopTest();

        List<Account> updateList = [select id, name, annualRevenue from account];
        for (account acc : updateList) {
            assert.isTrue(acc.name.contains('updated'));
            assert.areEqual(10000, acc.AnnualRevenue);
        }

        List<Contact> conList = [select id from contact];
        assert.areEqual(950, conList.size());
   }
}