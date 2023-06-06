public  class Dog {
   string name;
   string color;
   integer age;
   public Dog(){
    age=1;
    checkAge();
   }
   public Dog(string nm,string clr,integer a){
    name=nm;
    color=clr;
    age=a;
   checkAge();
}
public void checkAge(){
if (age>=0 && age<=1){
    system.debug('Puppy dog');
}else if (age<=3){
    system.debug('Young dog');
   } else if (age<=5){
    system.debug('Adult dog');
   }else{
    system.debug('Old dog');
    }
}
}