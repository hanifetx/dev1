public  class Books {
  string kitapAdi;
  string yazar;
  decimal fiyat;
  static integer kitapSayisi=0;
    
public Books() {
 kitapSayisi++;
 System.debug('kutuphanemize yeni bir kitap eklendi .kitap sayimiz'+kitapsayisi+' oldu.');
}
public void setKitapAdi(string kitapAdi){
    this.kitapAdi=kitapAdi;
}
public string getKitapAdi(){
return this.kitapAdi;

}

public void setYazar(string yazar){
    this.yazar=yazar;
}
public string getYazar(){
return this.yazar;

}
public void setFiyat(decimal fiyat){
    this.fiyat=fiyat;
}
public decimal getFiyat(){
return this.fiyat;

}
public void details(){
System.debug('kitap adi : '+this.kitapAdi);
System.debug('yazar : '+this.yazar);
System.debug('fiyat : '+this.fiyat);
System.debug('Toplam kitap sayisi : '+kitapSayisi);
}
public static void toplamKitapSayisi(){
    System.debug('Toplam Kitap sayisi = '+kitapSayisi);
}
    
}