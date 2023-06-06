public class Collections_Assignment {
    public static void listMethods() {
List<string> listdays1 = new List<string>{'monday','tuesday','wednesday','thursday','friday','saturday'};
    listdays1.add('sunday');
   System.debug(' add -> '+listdays1);
   List<string> newlistdays = new List<string>();
   newlistdays.addAll(listdays1);
   System.debug(' addAll->'+newlistdays);
   newlistdays.clear();
   System.debug(' clear ->'+newlistdays);
   List<string> listdays2= listdays1.clone();
   System.debug(' clone->'+listdays2);
   boolean x=listdays2.contains('MONDAY');
   System.debug(' contains -> '+x);
   boolean x1=listdays2.equals(listdays1);
   System.debug(' equals ->'+x1);
   boolean x3=listdays2.isEmpty();
   System.debug('isEmpty ->'+x3);
   String day=listdays2.get(5);
   System.debug(' get ->'+day);
   integer y=listdays2.indexOf('friday');
   System.debug('indexOf ->'+y);
   listdays2.remove(2);
   System.debug('remove ->'+listdays2);
   listdays2.set(2, 'xday');
   System.debug('set -> ' +listdays2);
   integer num=listdays2.size();
   System.debug('size -> '+num);
   listdays2.sort();
   System.debug('sort -> '+listdays2);
}

public static void setMethods(){
    Set<string> setDays = new Set<string>{'monday','tuesday','wednesday','thursday'};
    System.debug('setDays = '+setDays);
    setDays.add('saturday');
    setDays.add('sunday');
    System.debug('add -> '+setDays);
    List<string> listdayS = new List<string>{'MONDAY','TUESDAY','WEDNESDAY'};
    setDays.addAll(listdayS);
    System.debug('addAll->  '+setDays);
    integer x=setDays.size();
    System.debug('size->'+x);
    Boolean y=setDays.isEmpty();
    System.debug('isEmpty ->'+y);
    setDays.removeAll(listdayS);
    System.debug('remove listdays ->'+setDays);
    Set<string> setDays2 = setDays.clone();
    System.debug('clone setDays '+setDays2);
    Boolean y2=setDays.equals(setDays2);
    System.debug('equals -> '+y2);
    Boolean y3=setDays2.contains('MONDAY');
    System.debug('contain MONDAY->  '+y3);
    Integer X2=setDays.hashCode();
    System.debug('hashCode ->  '+x2);
    setDays.clear();
    System.debug('clear->'+setDays);




  

    











}








}


