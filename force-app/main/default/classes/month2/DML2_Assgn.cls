public  class DML2_Assgn {
    public static void insert_dml() {
    account acc1 = new account();
    acc1.name = 'Hanife Assignment';
    insert acc1;
    account acc2 = new account();
    acc2.name = 'Aysegul Assignment';
    insert acc2;

    }
    public static void updating_dml(){
    account acc1 = new account();
    acc1.name='Account Created';
    insert acc1;
    acc1.name = 'Account Updated';
    update  acc1;
    

    }
}