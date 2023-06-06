public  class Carrr {
 private string  carNumber;
public string name;
  public integer mfgYear;
 public string color;
 decimal price; 
 public void details(){
System.debug('car number is '+carNumber);
System.debug('car name is '+name);
System.debug('manufacturing year '+mfgYear);
System.debug('color of carr is '+color);
System.debug('price is '+price);
carAge();

 }
 public Carrr(){
    
    System.debug('new car is created, constructor called automatically');
    mfgYear=2023;
 }
 private void carAge(){
 integer currentYear=date.today().year();
 System.debug(currentYear-mfgYear);
 


 }

 public Carrr(string nm){
    name=nm;
    mfgYear=2000;
 }
public carrr(string nm,string carnum,string clr,integer  yr,decimal pc){
    name=nm;
    carNumber=carnum;
    color=clr;
    mfgYear=yr;
    price=pc;
    details();
}


}