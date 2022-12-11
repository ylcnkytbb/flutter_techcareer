void main (){
 int yas = 17;
 String isim = 'Ahmet';

 if(yas >= 18){
   print('Reşitsiniz');
 }else{
   print('Reşit Değilsiniz');
 }
 if(isim == 'Ahmet'){
   print('Merhaba Ahmet');
 }else if(isim == 'Mehmet'){
   print('Merhaba Mehmet');
 }else{
   print('Tanınmayan Kişi');
 }

 String ka = 'admin'; //kullanıcıadı
  int s = 12345;

  if(ka == 'admin' && s == 12345){ //And: true && true = true diğer durumlar hep false olacak
    print('Hoşgeldiniz');
  }else{
    print('Hatalı Giriş');
  }

  int sayi = 10;
  if(sayi == 9 || sayi == 10){ //Or: false || false = false diğer durumlar hep true
    print('Sayı 9 veya 10 dur');
  }else{
    print('Sayı 9 veya 10 değildir');
  }

}