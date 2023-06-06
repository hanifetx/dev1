public   class ListDemo2 {
    public static void iterateList() {
        List<integer> intList = new List<integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        
        system.debug(intList);

       
        for (integer eachNumber : intList) {
           
            system.debug('5 x '+eachNumber+' = '+eachNumber*5);
        }
   

    }

    public static integer add(List<integer>l1){
integer sum=0;
System.debug(l1);
for (integer  eachNum : l1) {
    sum+=eachNum;
    
}


return sum;



    }

public static void iterateListString(List<string>l2){
    System.debug(l2);
    for (string eachString: l2) {
        System.debug(eachString+' - its lenght is '+eachString.length());
        
    }



}

public static string add(List<string>strlist){
 string x='';
    for(string eachS : strlist) {
   
    x+=eachS+'||';
    System.debug(eachS);

        
    }
    return x;
}

public static void iterateListString99() {
    list<string> ls = new list<string> {'list', 'set', 'map', 'array'};
    ls.add('methods');
    ls.add('constructor');

    list<string> newLS = new list<string>();

    
    for (string eachStr : ls) {
         string temp = eachStr + ' - ' + eachStr.length();
         newLS.add(eachStr);
         newLS.add(temp);
    }
    system.debug(newLS);
  }




}