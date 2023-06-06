public  class SetDemoAgain {
    public static void printCountrySet() {
        Set<string> countries = new Set<string>{'USA','UK','France','Germany','Australia'};
countries.add('USA');
countries.add('Spain');
udebug(countries);
udebug(countries.contains('UK'));
udebug(countries.size());
    }
    public static void practSet(){
  Set<integer> s1 = new Set<integer>{5,2,25,1};
  Set<string> s2 = new Set<string>{'5','2','25','1'};
  Set<integer> s3 = new Set<integer>{1,2,5,25,25,25};
  udebug(s1.equals(s2));



    }
    public static void practSet2(){
        Set<integer> s1 = new Set<integer>{5,2,25,1,10,9,20};
        Set<integer> s2 = new Set<integer>{5,10,15,20,25,30};
 s1.retainAll(s2);
 udebug(s1);
 Set<integer> s11 = new Set<integer>{5,2,25,1,10,9,20};
 Set<integer> s22 = new Set<integer>{5,10,15,20,25,30};
 s11.removeAll(s22);
 udebug(s11);


}
public static void setOfList() {
    Set<list<integer>> sl = new Set<list<integer>>();
 List<integer> l1= new List<integer>{1,5,6,7,10};
 List<integer> l2 = new List<integer>{10,50,60,70,100};
 List<integer> l3= new List<integer>{1,5,6,7,10};
 List<integer> l4 = new List<integer>{11,5,6,7,10};

sl.add(l1);
sl.add(l2);
sl.add(l3);
sl.add(l4);
udebug(sl);
udebug(sl.size());
}



}