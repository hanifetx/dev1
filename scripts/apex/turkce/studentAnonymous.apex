Student student1=new student();
student1.firstName='Mary';
student1.lastName='Doe';
student1.className='6E';
student1.language='English';
student1.art=true;
student1.sport=false;
student1.ingGrade=95;
student1.fenGrade=100;
student1.mathGrade=92;
system.debug('student1 '+student1);
system.debug('---------------');


Student student2=new student();
student2.firstName='Tim';
student2.lastName='Doe';
student2.className='6E';
student2.language='Turkce';
student2.art=true;
student2.sport=true;
student2.ingGrade=95;
student2.fenGrade=85;
student2.mathGrade=92;
system.debug('student2 '+student2);
system.debug('---------------');

Student student3=new student('Lisa','Fire',95);
system.debug('student3 '+student3);

system.debug('---------------');
Student student4=new student('David','Fire',95);
system.debug('student4 '+student4);
integer toplamogrenci=student.staticSayi;
system.debug('toplam ogrenci sayimiz  '+toplamogrenci);
