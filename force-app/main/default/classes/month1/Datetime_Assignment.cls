public  class Datetime_Assignment {
    public void dateMethods() {
date varDate=Date.newInstance(2001,1,1);
System.debug(varDate);
 }
     public void timeMethods(){
        Time  varTime= time.newInstance(18 , 21 , 29,00);
        System.debug(varTime);
    }

    public void datetimeMethods(){
datetime varDatetime=datetime.newInstanceGmt(2001,1,1,18,21,29);
System.debug(varDatetime);
    }


}