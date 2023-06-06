public  class Conditionclass_assignment {
    public string ifclassmethod(integer  value) {
string output_Month='Not a valid Month';
if (value==1){

    output_Month='January';  

}else if(value==2){
    output_Month='February';
}else{
    output_Month='Not a valid Month';  
}
return output_Month;
  }
   public string casemethod( string month){
string output_Quarter='Enter a proper Month name';
switch on month{
when 'February','March','January'{
    output_Quarter='Quarter1';  
}
when else{
    output_Quarter='Not a valid Quarter' ; 
}
}
return output_Quarter;

  }
}