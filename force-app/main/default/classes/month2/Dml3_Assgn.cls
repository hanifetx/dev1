public class Dml3_Assgn {
public static void createBulkContacts() {
List<contact > con=new list<contact>();
        for (Integer i = 1; i <=4; i++) {
        contact c=new contact();
        c.FirstName='Mark';
        c.LastName='Rufallo';
          con.add(c) ;
        }
        if (!con.isEmpty()) {
            insert con;  
        }
      
     List<contact > con2=new list<contact>();  

       for (Integer i = 1; i <=3; i++) {
       contact c2=new contact();
       c2.FirstName='Chris';
       c2.LastName='Hemsworth';
         con2.add(c2) ;

         contact c3=new contact();
         c3.FirstName='Scarlett';
         c3.LastName='Johanson';
           con2.add(c3) ;

       }
       if (!con2.isEmpty()) {
        insert con2;  
    }
  
     

    }


    public static integer updateBulkContacts(string lname ,string pNumber){
 list< contact> cn= [select FirstName ,lastName ,phone from Contact];
 list< contact> cnNew = new List<contact>();
 for (Contact eachc : cn) { 
    if (eachc.LastName==lname) {
        eachc.Phone=pNumber;
        cnNew.add(eachc);
    }
  
}
if (!cnNew.isEmpty()) {
    update cnNew;
    
   }
   return cnNew.size();
}
}