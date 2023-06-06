public with sharing class Collections {
    public static string listaAssignment(integer n) {
        List<string> LstMonth=new  List<string>();
        string output_month;
        LstMonth.add(' ');
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
       integer size1=lstMonth.size();
   
       if (n>=0 && n< size1) {
       output_month = LstMonth.get(n);
    }else {
        output_month='not valid month';
       }
       return output_month;
    }
}