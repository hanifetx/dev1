
    public class DummyDataCreation {
        public static void soql1(){
            List<Opportunity> oppList =[select id, amount, Description from Opportunity where amount != null order by Amount desc limit 10];
            for (Opportunity eachOpp : oppList) {
                eachOpp.Description= 'This is one of the top 10 opportunities.Please work on this properly';
            }
            update oppList;
        }
    }