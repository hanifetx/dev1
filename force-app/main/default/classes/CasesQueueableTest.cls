@istest
public class CasesQueueableTest {
    @istest
    public static void testCase1() {
        list<case> listCase = new list<case>();

for (Integer i = 0; i < 505; i++) {
    Case c = new case(subject = 'there is a bug', Description = 'resolve it man', Status = 'New', Origin ='Web' );
    listCase.add(c);
}
insert listCase;
Account ac= new account(name='Default Acc');
insert ac;
test.startTest();
CasesQueueable cq= new CasesQueueable(ac.id,listCase);
system.enqueueJob(cq);

test.stopTest();
list<case> allcases=[select id ,accountId from case where AccountId !=null];
assert.isTrue(allcases[0].AccountId !=null);

    }
}