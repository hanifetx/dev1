public  class Datetime_Assignment2 {
    public  void  diffofDate() {
    date varTommorowDate=date.newInstance(2023,4,5);
    date varTodaysDate =date.newInstance(2023,4,4);
    Integer df=varTommorowDate.daysBetween(varTodaysDate);
    System.debug(df);
    }

    public void Timecheck(){

        datetime varTomorrowDatetime=datetime.newInstance(2023,4,5,7,0,0);
        System.debug(varTomorrowDatetime);
        Datetime var10DaysDatetime=datetime.newInstanceGmt(2023,4,15,9,0,0);
        System.debug(var10DaysDatetime);
        long varDatetimeLong =12339874361l; 
        datetime lng = datetime.newInstance(varDatetimeLong);
        System.debug(lng);
        datetime day7later=varTomorrowDatetime.addDays(7);
        System.debug(day7later);
         datetime day10later=var10DaysDatetime.addDays(10);
         System.debug(day10later);
    }
}