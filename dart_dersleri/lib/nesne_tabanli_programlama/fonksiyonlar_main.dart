import 'package:dart_dersleri/nesne_tabanli_programlama/fonksiyonlar.dart';

void main() {
  var f = Fonksiyonlar();
  f.selamla();

  //bu kısımdaki farkı anla!!
  String gelenSonuc = f.selamla1(); //gelecek olan sonuca hazırlık yapıyoruz
  print('Gelen Sonuc: $gelenSonuc');

  f.selamla2('Zeynep');

  int gelenToplam = f.toplama(10, 20);
  print('Gelen Toplam: $gelenToplam');
}