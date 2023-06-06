public  class ListDemoAgain {
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


       intList[4]=30;

       System.debug(intList);
        }

public static void practiceList1(){

List<integer> l1 = new List<integer>();
for (Integer i = 1; i <=5; i++) {
l1.add(i*11);
    
}
System.debug(l1);

}
public static void printAnimalsList() {
List<string> animals = new List<string>();
animals.add('dog');
animals.add('cat');
animals.add('horse');
animals.add('tiger');
animals.add('lion');  
animals.add('lion'); 

System.debug(animals);
System.debug(animals.size());
System.debug(animals.get(animals.size()-1).toUpperCase());

animals.remove(animals.size()-1);
System.debug(animals);
System.debug(animals.size());
if (animals.contains('lion')) {
    System.debug('list has lion');

    
}else{
    System.debug('no Lion');
}

}

public static void printAnimalsList2 () {
    List<string> animals = new List<string>();
animals.add('dog');
animals.add('cat');
animals.add('horse');
animals.add('tiger');
animals.add('lion');  
animals.add('lion');

List<string> a2 = new List<string>{'kangaroo','bear','deer','bear','deer'};
System.debug('2nd list is empty'+a2.isEmpty());

a2.addAll(animals);
System.debug('a2 =>'+a2);
System.debug('index of bear '+a2.indexOf('bear'));
System.debug('index of Bear '+a2.indexOf('Bear'));
a2.sort();
System.debug('sorted list'+a2);
integer bearIndex = a2.indexOf('bear');
a2.remove(bearIndex);
System.debug(a2);
a2.clear();
System.debug(a2);
System.debug(a2.isEmpty());
    
}


    }