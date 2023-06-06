public  class InventoryManager {
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
     public static integer productcount=0;
    
    public InventoryManager()  {
     productcount ++;
}
    public InventoryManager(string  productName, string productCode){
    productcount ++;
    this.productName = productName;
    this.productCode = productCode;
}
public void setcostPrice(integer costPrice){
    this.costPrice=costPrice;
 }
public void setsellingPrice(integer sellingPrice){
 this.sellingPrice=sellingPrice;
}
public integer getcostPrice(){
 return this.costPrice;
}
public integer getsellingPrice(){
return this.sellingPrice;
}

public void productDisplay(){
System.debug(productName);
System.debug(productCode);
System.debug(sellingPrice);
decimal ProfitPercent=(sellingPrice-costPrice)*100/costPrice;
System.debug(ProfitPercent);

if (ProfitPercent>=20) {
    System.debug('star Product');
    
}else{
    System.debug('avarage product');
}


}




}