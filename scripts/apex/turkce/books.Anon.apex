List<books> bookList = new List<books>();

Books book1 =new Books();
book1.setKitapAdi('safahat');
book1.setYazar('Mehmet Akif Ersoy');
book1.setFiyat(25);
book1.details();
bookList.add(book1);

System.debug('book1 => '+book1);
System.debug(book1.getKitapAdi());
Books book2 =new Books();
book2.setKitapAdi('Bu Ulke');
book2.setYazar('Cemil Meric');
book2.setFiyat(20);
book2.details();
bookList.add(book2);
System.debug('book2 => '+book2);
System.debug(book2.getKitapAdi());
System.debug('booklist=>'+bookList);
for (books book : bookList) {
   System.debug(book); 
   System.debug('kitap adi :'+book.getKitapAdi());
   System.debug('Yazar :'+book.getYazar());
   System.debug('fiyat :'+book.getFiyat());
}