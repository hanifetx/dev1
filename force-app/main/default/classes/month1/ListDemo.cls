public class ListDemo {
    public  static void candidatesList() {
 List<string> listC=new list<string>();
 System.debug(listC);
 listC.add('Tom');
 listC.add('Bill');
 listC.add('Marc');
 listC.add('Kural');
 System.debug('list of candidates->'+listC);
    }

    public static void randomIntegerList(){
List<integer> intList=new List<integer>();
intList.add(90);
intList.add(26);
intList.add(15);
intList.add(15);
intList.add(90);
intList.add(90);
System.debug('int list= '+intList);
integer size= intList.size();
System.debug('size of list is '+size);

integer int3=intList.get(3);
integer int31=intList[3];
System.debug('int3 is '+int3);
System.debug('int31 is '+int31);
}
public  static string  candidatesList(integer i) {
    string returnValue='';
    List<string> listC=new list<string>();
    System.debug(listC);
    listC.add('Tom');
    listC.add('Bill');
    listC.add('Marc');
    listC.add('Kural');
    System.debug('list of candidates->'+listC);
   integer size=listC.size();
    if (i>=0 && i<size) {
        returnValue =listC.get(i);  
    }else{
        returnValue='No such Value Exists';
    }
 
    return returnValue;
       }
       public static void friendList() {
        list<string> friends = new list<string>();
        friends.add('Sachin');
        friends.add('Arpan');
        friends.add('Erik');
        system.debug('before ' + friends);

        friends.sort();
        system.debug('after ' + friends);
    }
      
}