public   class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        System.debug('set of cities :'+cities);
    }


    public static void randomIntegerSet(){

Set<integer> intset = new Set<integer>();
intset.add(15);
intset.add(25);
intset.add(10);
intset.add(15);
intset.add(15);
intset.add(null);

System.debug(intset);


    }


    public static void setFromList(){
List<integer> li = new List<integer>{10,15,15,21,21,55,101,101};
System.debug(li);
Set<integer> si = new Set<integer>();
si.addAll(li);
System.debug(' si'+Si);

List<integer> newLi = new List<integer>();

newLi.addAll(si);
System.debug('deduplicated list: '+newLi);

    }
public static void upperCaseSet(){
    Set<string> cities = new Set<string>();
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Lisbon');
    cities.add('Tokyo');
    cities.add('TOKYO');
    cities.add('Nairobi');
    cities.add('NAIROBI');
    System.debug('cities = '+cities);
   

Set<string> citiesInCaps = new Set<string>();
for (string eachCity : cities) {

    string temp=eachCity.toUpperCase();
    citiesInCaps.add(temp);
    
}

System.debug('cities in caps= '+citiesInCaps);


}
public static Set<String> upperCaseSet(set<string>s1){


    Set<string> s1Incaps = new Set<string>();

for (string eachStr :s1) {
    
    string temp=eachStr.toUpperCase();
    s1Incaps.add(temp);
}



    return   s1InCaps;



}






}