public class ListExtra_Assignment {
    public static void schoolsList (string medium) {
        List<string> ls= new List<string>{'S1 English','S2 English','S3 Turkish','S4 English','S5 Turkish','S6 Japanese'};

       List<string> mdm = new List<string>();

        for (string eachS : ls) {
         if (eachS.contains(medium)) {
            mdm.add(eachS);
            
         } 
        }
        System.debug(mdm);

    }


}