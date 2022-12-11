void main() {
  String str = 'Merhaba'; //standart değişken tanımlama

  //Tanımlama
  String? mesaj = null;  // ? koymak: mesaj alt satırlarda null olabilir.Ona göre kontrol et.

  //mesaj = 'Hello';

  //Yöntem 1: null ise çokmez, null olmaza çalışır
  print('Yöntem 1: ${mesaj?.toUpperCase()}');

  //Yöntem 2: uyarıdan kurtarır ama hata oluşabilir, burada hata olmaz diye risk alıyoruz
  //print('Yöntem 2: ${mesaj!.toUpperCase()}');

  //Yöntem 3: kontrol için kullanılır, bu ifade null mu değil mi
  if(mesaj != null) {
    print('Yöntem 3: ${mesaj.toUpperCase()}');
  }else {
    print('Mesaj nulldur');
  }
}