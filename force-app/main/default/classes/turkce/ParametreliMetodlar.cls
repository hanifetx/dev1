public  class ParametreliMetodlar {
 
        public void printWelcome() {
            System.debug('Hosgeldiniz..');
        }
    
        public void welcomePerson(string isim) {
            System.debug('Hosgeldin ' + isim);
        }
    
        public integer toplama(integer a, integer b) {
            integer tplm = a + b;
            return tplm;
        }
    
        public Boolean artikYil(date myDate) {
            integer myYear = myDate.year();
            Boolean sonuc = date.isLeapYear(myYear);
            return sonuc;
        }
       
    
         public Integer uzunluk(string text) {
            Integer karakterUzunlugu = text.length();
            return karakterUzunlugu;
         }
    }

