//One TestClass Per class or trigger.
//@isTest annotation is used to make our class as a TEST Class.
@isTest
public class Calculator9Test {
@isTest
public static void testMethod1(){
Calculator9 c=new Calculator9();
c.add(1.1 ,8.5);
}
@isTest
 public static void testAddMethod(){
    Calculator9 c=new Calculator9();
    integer sum =c.add(5, 5);
    system.assertEquals(10, sum);
    Assert.areEqual(10, sum);


 }
 @isTest
 private static void testAddMethod2(){
    Calculator9 c=new Calculator9();
    integer sum =c.add(5, 5,5);
    system.assertEquals(15, sum);
    Assert.areEqual(15, sum);


 }
 @isTest
 private static void testleapYearMethod(){
    Calculator9 c=new Calculator9();
   
    Assert.isFalse( c.leapYearCheck(date.newInstance(2023, 01, 05)));

   Assert.areEqual(false,c.leapYearCheck(date.newInstance(2023, 01, 05 )));
 }

}