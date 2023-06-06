public  class NewCar {
  integer currentSpeed=0;
  string carType;
  string carName;

  public void startCar(string typ,string crN){
  string carType=typ;
  string carName=crN;
  system.debug(cartype);
  system.debug(carName);
  }

public void Accelerate(integer x){
currentSpeed+=x;
 system.debug(currentspeed);

}

public void Brake(integer y){
currentSpeed-=y;
system.debug(currentspeed);
}

public void stopCar(){
    currentSpeed=0;
    system.debug(currentspeed);
}
public void checkspeed(){
if (currentspeed<0){
    system.debug('not valid');

}else if(currentspeed>0 && currentspeed<=30){
    system.debug('city mode');
}else if(currentspeed<=60){
    system.debug('ekonomik mode');

}else if (currentSpeed>=60){
    system.debug('sports mode');

}



}

  }
