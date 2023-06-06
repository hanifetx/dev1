public class SOQL_Assignment2 {
    public static void contactSOQL() {
        list<contact>  Istcontact=[select id,name, account.id, account.name  from contact where createddate=today ];
     for (contact  eachC : Istcontact ){
       
        System.debug('account id =  '+ eachC.account.Id+' Account name '+eachC.account.name);
     }
    }
    public static void accountSOQL(){

        list<account>  Istaccount = [select id,name,(select id,name from contacts) from account where name in('Apple','Meta','Tesla','Microsoft')];
        for (account eachA :Istaccount ) {
            System.debug('account id=  '+eachA.id+' & '+'Account name = '+eachA.name);
         
            for (contact  eachc :eachA.contacts) {
                System.debug('contact id ='+eachc.Id+'contact name  ='+eachc.Name);
               }
               list<contact>  totalcontact=[select id,  account.name  from contact where account.name=:eachA.name ];
               System.debug(eachA.name+'   total contact is ----->'+totalcontact.size());
            System.debug('------');
           
            
        }

    

    }

   




    }
     




