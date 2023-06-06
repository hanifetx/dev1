list<lead> ldlist =new list<lead>();

for(integer i=1 ;i<=5; i++){
lead ld1=new lead ();
ld1.LastName='trigger'+i;
ld1.Company=i+'. lead Assignment';
ld1.Status='Closed - Converted ';
ldlist.add(ld1);
}
insert ldList;
 
 for(lead eachld :ldlist){
    eachld.Description='Field Updated from  Anonymous';
 }
 update ldlist;


