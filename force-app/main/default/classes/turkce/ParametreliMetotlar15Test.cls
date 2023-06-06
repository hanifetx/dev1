@istest
public  class ParametreliMetotlar15Test {
    @istest
    private static void printWelcomeTest(){
ParametreliMetodlar pm =new ParametreliMetodlar();
pm.printWelcome();
    }
    @istest
    private static void welcomePersonTest(){
ParametreliMetodlar pm =new ParametreliMetodlar();
pm.welcomePerson('Ayse');
    }

    @istest
    private static void toplamaTest(){
ParametreliMetodlar pm =new ParametreliMetodlar();
integer tplm = pm.toplama(11, 22);
assert.areEqual(33, tplm);

}
@istest
private static void artikYilTest(){
    ParametreliMetodlar pm =new ParametreliMetodlar();
    date dt =date.newInstance(2023, 5, 24);
    boolean result = pm.artikYil(dt);
    assert.isFalse(result);

}
@istest
private static void uzunluk(){
    ParametreliMetodlar pm =new ParametreliMetodlar();
   integer uzunluk = pm.uzunluk('all');
    assert.areEqual(3, uzunluk);
}
}