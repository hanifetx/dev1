public  class MapDemo2 {
    public  static void mapExample2() {
        Map<String,decimal> map2 =new Map<String,decimal> ();
        map2.put('apple', 5.5);
        map2.put('pen', 10.5);
        map2.put('shirt', 50.5);
        map2.put('laptop', 1500.5);
       system.debug('map2 is '+map2);


       Map<String,decimal> lower =new  Map<String,decimal>();
       Map<String,decimal> higherMap =new  Map<String,decimal>();


       Set<String> allItems=map2.keySet();
       for(string eachItem:allItems){

      decimal eachPrice=map2.get(eachItem);
      if(eachPrice>100){
      
       
      
      higherMap.put(eachItem, eachPrice);
      system.debug('higher ='+eachItem+'--->'+eachPrice);



      }else{

        lower.put(eachItem, eachPrice);
        system.debug('lower ='+eachItem+'--->'+eachPrice);
      }

       }
       system.debug('higher map ='+higherMap);
       system.debug('lower map ='+lower);

       

    }

    public static string retrieveMonth(integer m) {
      string month = '';

      map<integer, string> monthMap = new map<integer, string>{1 => 'January', 2 => 'February'};
      monthMap.put(3, 'March');

      monthMap.put(4, 'April');
      monthMap.put(5, 'May');
      monthMap.put(6, 'June');

      monthMap.put(7, 'July');
      monthMap.put(8, 'August');
      monthMap.put(9, 'September');

      monthMap.put(10, 'October');
      monthMap.put(11, 'November');
      monthMap.put(12, 'December');
   
 if (    monthMap.containsKey(m)) {
  
  month = monthMap.get(m);
 }else{
  month='no such month exists.';
 }
     
      return month;
  }
  }
  