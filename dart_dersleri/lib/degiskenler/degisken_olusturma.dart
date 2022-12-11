void main (){ //ilk çalisacak fonksiyon
  var ogrenciAdi = 'Ahmet';
  var ogrenciYas = 23;
  var ogrenciBoy = 1.78;
  var ogrenciBasHarf = 'A';
  var ogrenciDevamEdiyorMu = true;

  print(ogrenciAdi);
  print(ogrenciYas);
  print(ogrenciBoy);
  print(ogrenciBasHarf);
  print(ogrenciDevamEdiyorMu);
  
  //FARKLI BİR YONTEM
  
  int urun_id = 3416;
  String urun_adi = 'Kol saati';
  int urun_adet = 100;
  double urun_fiyat = 149.99;
  String urun_tedarikci = 'Rolex';
  
  print('Ürün id: $urun_id'); //string insert!!
  print('Ürün adı: $urun_adi');
  print('urun adet: $urun_adet');
  print('Ürün fiyat: $urun_fiyat ₺');
  print('Ürün Tedarikçi: $urun_tedarikci');

  int a = 100;
  int b = 200;

  print('$a ve $b nin toplamı : ${a+b}');

  //SABİTLER
  //final,const,Java(final) , Swift(let), Kotlin(val)
  int sayi = 30;
  print(sayi);
  sayi = 100;

  // final int sonuc 100dür ve bundan sonra bunu değiistirmiycem demek istiyoruz
  //sonuc = 30; burda bu tanımlanamaz hata alırız

  //final:daha sayısal islemlerde kullanılır
  //const:daha gorsel ifadelerde kullanılır
  // içeriğini degiştirmek istemediğimiz seyleri const ile yazarız


  //KODLAMAYI ÇALISTIRDIĞIMIZDA HAFIZADA OLUSUR!!

  final int sonuc = 100;

  //DEGİSKENİ TANIMLADIĞIMIZDA HAFIZADA OLUSUR!!

  const double pi = 3.14;

  //TÜR DÖNÜŞÜMÜ -- CASTING

  //Sayısaldan Sayısala Dönüşüm
  int i = 78;
  double d = 98.67;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble(); //yuvarlama işlemi yapmaz
  print(sonuc1);
  print(sonuc2);

  //Sayısaldan Metine Dönüşüm
  String sonuc3 = i.toString(); //'78'
  String sonuc4 = d.toString(); //'98.67'

  print(sonuc3);
  print(sonuc4);

  //Metinselden Sayısala Dönüşüm

  String yazi1 = '25';
  String yazi2 = '51.45';

  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);

  print(sonuc5);
  print(sonuc6);

}
