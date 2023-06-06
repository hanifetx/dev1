InventoryManager p =  new InventoryManager();
System.debug('product =  '+InventoryManager.productcount);
p.setcostPrice(40);
p.getcostPrice();
p.setsellingPrice(40);
p.getsellingPrice();
p.productDisplay();

InventoryManager p2 = new InventoryManager();
System.debug('product =  '+InventoryManager.productcount);
p2.setcostPrice(33);
p2.getcostPrice();
p2.setsellingPrice(34);
p2.getsellingPrice();
p2.productDisplay();


InventoryManager p3 = new InventoryManager('x','001A');
System.debug('product =  '+InventoryManager.productcount);
p3.setcostPrice(55);
p3.getcostPrice();
p3.setsellingPrice(60);
p3.getsellingPrice();
p3.productDisplay();

InventoryManager p4 = new InventoryManager('y','002A');
System.debug('product =  '+InventoryManager.productcount);
p4.setcostPrice(75);
p4.getcostPrice();
p4.setsellingPrice(77);
p4.getsellingPrice();
p4.productDisplay();
InventoryManager p5 = new InventoryManager('z','003A');
System.debug('product =  '+InventoryManager.productcount);
p5.setcostPrice(90);
p5.getcostPrice();
p5.setsellingPrice(100);
p5.getsellingPrice();
p5.productDisplay();
System.debug('total products '+InventoryManager.productcount);