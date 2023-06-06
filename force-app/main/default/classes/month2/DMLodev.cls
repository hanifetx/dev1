public  class DMLodev {
    public static void createAccount() {
       
       }
    public static void updateAccount() {
 List<account> acc= [select id, name from accaount order by createddate desc limit 2];
for (account eachA : acc) {
    eachA.name='Assignment111';
    eachA.phone='32144444';
    
    
}


    }
}