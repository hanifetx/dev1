public  class ModernMaths {
    public static void printFactors(integer Num) {
        List<Integer> factorNum = new List<Integer>();
        for (Integer i = 1; i < = Num; i++) {
            integer remainder=math.mod(Num,i);
           

            if (remainder==0) {
                factorNum.add(i);
                
            }
            
        }
        system.debug(factorNum);

    }
}