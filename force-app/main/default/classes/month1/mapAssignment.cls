public class mapAssignment {
    public static void marksObtaininMaths() {
        Map <string,integer> marks = new Map<string, integer>{'0111CE112'=>40,'0111CE113'=>19};
        
      marks.put('0111CE114', 45);
      marks.put('0111CE115', 11);
      marks.put('0111CE116', 33);

      System.debug(marks);

Set<String> uniqueRollNumberSet = marks.keySet();
System.debug('Roll Numbers = '+uniqueRollNumberSet );
List<integer> marksObtaininList = marks.values();
System.debug('Marks =  '+marksObtaininList);
 
for (string x: uniqueRollNumberSet) {
   

   integer y=marks.get(x);
    if (y<20) {
        System.debug(x +' =     is not qualified for next class');
        
    }else{
    
     System.debug(x+' =  '+y+'--> Next class ');

    }
    
}

    }
}