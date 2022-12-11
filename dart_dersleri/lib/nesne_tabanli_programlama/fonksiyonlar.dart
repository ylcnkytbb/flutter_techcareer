class Fonksiyonlar { //tekrarlanan kodları biraraya getiren yapı
  //void
  //amaçları sadece işlem yapmaktır

  void selamla(){
    String sonuc = 'Merhaba Ahmet';
    print(sonuc);
  }

  //return: yazılımcı bu fonk kullandığı zaman ona bilgi transferi olacak

  String selamla1(){
    String sonuc = 'Merhaba Ahmet';
    return sonuc ;
}

  //parametre
  void selamla2(String isim){
    String sonuc = 'Merhaba $isim';
    print(sonuc);
  }
 int toplama(int sayi1,int sayi2){
    int toplam = sayi1 + sayi2;
    return toplam;
 }

//overloading : metotları aynı isimle kullanma -- dart dilinde bu yok
  /*int toplama(int sayi1,int sayi2){
    int toplam = sayi1 + sayi2;
    return toplam;
  }*/

}