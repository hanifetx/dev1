@istest
public  class SoqlParentChildAssignmentTest {
    @TestSetup
    static void makeData(){
        List<account> acclist = new list<account>();
        for (Integer i = 0; i < 15; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           acclist.add(ac);
        }
        insert acclist;  
        List<contact> Conlist = new list<contact>();
        for (Integer i = 0; i < 15; i++) {
            contact con = new contact();
            con.LastName = 'test con ' + i;
            con.AccountId=acclist[0].id;
           conlist.add(con);
        }
        insert conlist;  
    }
    @isTest
    public static void printContactAccountsTest(){
test.startTest();
SoqlParentChildAssignment.printContactAccounts();
test.stopTest();
    }
    @isTest
    public static void printAccountContactsTest(){
test.startTest();
SoqlParentChildAssignment.printAccountContacts();
test.stopTest();
    }
        
    }
 
