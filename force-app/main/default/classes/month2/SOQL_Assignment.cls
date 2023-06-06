public  class SOQL_Assignment {
    public static void soql_whereClause() {
        list<contact> istContact = [select id, name from contact where name LIKE 'A%'];
      System.debug(istContact);
      System.debug('size of istContact ='+istContact.size());
    }
    public static void soql_FromMethod(){
        list<contact> istContact = [select lastName, phone from contact];
        for (contact eachC : istContact) {
            System.debug('last name ='+eachC.lastname);
            System.debug('phone = '+eachC.phone);
            System.debug('-----------');
        }

    }
}