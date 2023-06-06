public  class Student {
 public string  firstName;
 public string lastName;
 private string schoolName='Dream school';
public string className;
public string language;  
public Boolean art;
public Boolean sport;
public integer ingGrade;
public integer mathGrade;
public integer fenGrade;
public static integer  staticSayi=0;
public integer nonStaticSayi=0;

public Student(){
    staticSayi++;
    nonStaticSayi++;
    System.debug('yeni bir ogrenci kaydi yapildi.ogrenci sayimiz '+staticSayi);
    System.debug('yeni bir ogrenci kaydi yapildi.ogrenci sayimiz '+nonStaticSayi);
}
public Student(string fName,string lName,integer ingNotu){
    this();
    this.firstName=fName;
    this.lastName=lName;
    this.ingGrade=ingNotu;



}
}
