public  class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
     date todayDate=date.today();
     date hanifeBirthDate=date.newInstance(1985,8,3);
     integer ageInMonths =hanifeBirthDate.monthsBetween(todayDate);
    System.debug(ageInMonths);
    }
    public void calculateAgeIndays() {
        date todayDate=date.today();
        date hanifeBirthDate=date.newInstance(1985,8,3);
        integer ageInDays =hanifeBirthDate.daysBetween(todayDate);
       System.debug(ageInDays);
}

public void printSubscriptionEndDate(){
    date todayDate=date.today();
    date  enddate=todayDate.addDays(1000);
    System.debug(enddate);

    date newEndDate=date.today();
date newStartDate=newEndDate.addDays(-1000);
System.debug(newStartDate);
integer newSDYEAR=newStartDate.year();
integer newSDMonth=newStartDate.month();
System.debug(newSDYEAR);
System.debug(newSDMonth);

}

public void offerEndDateTime(){
    //current datetime
    datetime offerStart = datetime.now();

    datetime offerEnd = offerStart.addHours(51);
    system.debug('offer end datetime ' + offerEnd);
}

}




