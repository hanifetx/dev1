public  class StudentMarksheet {
   String FirstName;
   String lastName;
   integer mathematics;
  public integer english;
   integer chemistry;
   static string  schoolName;
  public StudentMarksheet(){
schoolName='Salesforce Public School';
}
  public void setfirstName(string firstName){
    this.firstName=firstName;
  }
  public void setlastName(string lastName){
    this.lastName=lastName;
  } 

  public string getfirstName(){
 return  this.firstName;
  }
 public string getlasttName(){
    return  this.lastName;
}
public void setMarks(integer mathematics,integer english,integer chemistry ){
    this.mathematics=mathematics;
    this.english=english;
    this.chemistry=chemistry;
}
public void showMarksheet(){
   system.debug(' Student name= '+FirstName+' '+lastName);
   System.debug('School Name ='+schoolName);
   System.debug('Mathematic mark= '+mathematics);
   System.debug('chemistry mark= '+chemistry);
   System.debug('english mark= '+english);

   
if (mathematics+english+chemistry>=120) {
    System.debug('you are passed');
    
}else {
    System.debug('you need to study more');
    
}
    
}
}

