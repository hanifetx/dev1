public with sharing class pizzaClass {
  Integer orderId=0;
  integer quantity;
  String toppings;
  String type;
  Decimal tax;
  string feedback;
 public void addCart(integer qtty,string tpp,string typ){
    orderId++;
   quantity=qtty;
   toppings=tpp;
   type=typ;
    if (quantity==1) {
    tax=0.18;
 }else if(quantity==2){
    tax=0.12;
 }else if (quantity==3) {
    tax=0.06;   
 }else {
    tax=0;
 }
 }    
public  void cancelcart(){
orderId=0;
System.debug('order Id-> '+orderId);
    }

public void feedback(string feedback){
system.debug(feedback);

}

}
