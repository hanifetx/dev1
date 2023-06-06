public class PrimitiveDatatypeDemo2 {
    public void printNewDate(){

         system.debug('create new date variable');
 
         //datatype              //newIntance (year, month, day)
         date        newDate1 = Date.newInstance(1992, 4, 15);
         system.debug(newDate1);
 
         date        newDate2 = Date.newInstance(2020, 3, 20);
         system.debug(newDate2);
         date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);
    }
    public void printNewTime(){
        Time myTime1 = time.newInstance(11, 10, 30, 50);
        system.debug(myTime1);
        Time myTime2 = time.newInstance(21, 12, 15, 40);
        system.debug(myTime2);
   }
   public void printNewDateTime(){

    //methodname to create new DATETIME is newInstance
    date        newDate2 = Date.newInstance(2020, 3, 20);
    Time myTime1 = time.newInstance(11, 10, 30, 50);
    //1. new DateTime using i) date and ii) time
    datetime dt1 = datetime.newInstance(newDate2, myTime1);
    system.debug('dt 1 is ' + dt1);

    //2. new DateTime using year, month, day --> time will be midnight 00000
    datetime dt2 = datetime.newInstance(2021,1,5);
    system.debug('dt2 is ' + dt2);
    Datetime dt3 = datetime.newInstance(2021, 5, 19, 6, 15, 50);
    system.debug('dt3 is ' + dt3);
    datetime dt6=datetime.now();
    System.debug('dt6 is'+dt6);

    
}
public void printDateTime2(){

    datetime dt5 = datetime.newInstance(0);
    system.debug('dt 5 is ' + dt5); //1970-01-01 midnight
    
    long longTime = 2354878745000l; //milliseconds from 1970 Jan 1 midnight
    datetime dt55 = datetime.newInstance(longtime);
    system.debug('dt 55 is ' + dt55);
    datetime dt4 = datetime.newInstanceGmt(2021, 11, 100, 24, 15, 50);
    system.debug('dt 4 ' + dt4);
}


   
 }