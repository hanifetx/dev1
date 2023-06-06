@istest
public  class IfElseConditional2Test {
    @istest
   public static void positiveOrNegativeTest(){
 IfElseConditional2 iec =new IfElseConditional2();
 string msg =iec.positiveOrNegative(5);
 assert.areEqual('Positive', msg);
 string msg2 =iec.positiveOrNegative(-1);
 assert.areEqual('Negative', msg2);
 string msg3 =iec.positiveOrNegative(0);
 assert.areEqual('Sifir', msg3);
   }
   @istest
   public static void phoneTest(){
    IfElseConditional2 iec =new IfElseConditional2();
    string msg1 = iec.phone('2123215476');
assert.isNotNull(msg1);
string msg2 = iec.phone('2163215476');
assert.isNotNull(msg2);
string msg3 = iec.phone('3123215476');
assert.isNotNull(msg3);
string msg4 = iec.phone('21632154762');
assert.isNotNull(msg4);
}
}