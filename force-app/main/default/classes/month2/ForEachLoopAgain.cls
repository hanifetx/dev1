public  class ForEachLoopAgain {
public static void listForEach1() {
    List<integer> l1 = new List<integer>{1,5,6,7,10};
    Integer sum=0;
    string str='';
    for (integer i : l1) {
        sum+=i;
        str+=i+'||';
    }
    System.debug(sum);
    System.debug(str);
}
public static void printCountryForEach(){
    Set<string> c = new Set<string>{
        'Germany',
        'Phillipinies',
        'Nigeria',
        'Mexico',
        'Canada',
        'United Kingdom',
        'United State'


    };

    Set<string> c2 = new Set<string>();
    for (string eachCountry: c) {
        System.debug(eachCountry);
        integer len =eachCountry.length();
        if (len>8) {
            c2.add(eachCountry);
            
        }
        
    }
    System.debug(c2);
}



}