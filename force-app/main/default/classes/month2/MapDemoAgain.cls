public  class MapDemoAgain {
    public static void  printMap1() {
        Map<integer, string> map1= new Map<integer, string>();

        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
         map1.put(1033, 'Lui');
         map1.put(1011, 'Amar');
         map1.put(1055, 'Monica');
         System.debug(map1);
         integer rollNo=1011;
         string studentName=map1.get(rollNo);
         System.debug(studentName);


         integer rollNo2=1055;
         if (map1.containsKey(rollNo2)) {
            System.debug(rollNo2+' student name is  '+map1.get(rollNo2));
         }else{
            System.debug('No such roll no is present in our student records');
         }


    }
    public static void  printMap2() {
        Map<integer, string> map1= new Map<integer, string>();

        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
         map1.put(1033, 'Lui');
         map1.put(1011, 'Amar');
         map1.put(1055, 'Monica');
         System.debug(map1);

         set<integer> allRollNo = map1.keySet();
         System.debug(allRollNo.size());
         System.debug(allRollNo);
         List<string> allStudent = map1.values();
         System.debug(allStudent);
         Map<integer, string> m2= new Map<integer, string>();
         m2.putAll(map1);
         System.debug('m2-->'+ m2);
        
}

public static void  printMap3() {
    Map<integer, string> map1= new Map<integer, string>();

    map1.put(1011, 'Alex');
    map1.put(1022, 'Monica');
     map1.put(1033, 'Lui');
     map1.put(1011, 'Amar');
     map1.put(1055, 'Monica');
     map1.put(1066, 'Alex');
     map1.put(1077, 'Ben');
     System.debug(map1);

     Set<integer> allKeys = map1.keySet();
     string finalString='';
     for (integer eachkey :allKeys) {
        string sn=map1.get(eachKey);
        System.debug('roll no is '+eachkey+' ,student name is '+sn);
        finalString += sn+'||';

        
     }

      System.debug(finalString) ; 
     
}
public static void  printMap4() {
    Map<string, list<string>>m9 = new Map<string, list<string>>();
List<string> itTeam = new List<string>{'Brain','Decker'};
List<string> salesTeam = new List<string>{'John','jane'};
List<string> serviceTeam= new List<string>{'Monica','Alex'};
m9.put('IT',itTeam);
m9.put('Sales',salesTeam);
m9.put('Service',serviceTeam);
System.debug(m9);

Set<String> allTeams = m9.keySet();
List<list<string>> allMembers = m9.values();
 for (string eachT :allTeams) {
    System.debug(eachT);
    System.debug(m9.get(eachT));

    for (string eachM : m9.get(eachT)) {
        System.debug(eachM +' is in '+eachT);
        
    }
    
 }



}

}