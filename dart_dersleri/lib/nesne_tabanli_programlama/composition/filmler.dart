//import 'package:dart_dersleri/nesne_tabanli_programlama/composition/kategoriler.dart';
//import 'package:dart_dersleri/nesne_tabanli_programlama/composition/yonetmenler.dart';

/*class Filmler {
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori; //composition:başka bir classın nesnesini başka bir yerde kullanıyoruz
  Yonetmenler yonetmen;

  Filmler(
  { required this.film_id,
    required this.film_ad,
    required this.film_yil,
    required this.kategori,
    required this.yonetmen});
}*/

import 'package:dart_dersleri/nesne_tabanli_programlama/composition/kategoriler.dart';
import 'package:dart_dersleri/nesne_tabanli_programlama/composition/yonetmenler.dart';

class Filmler {
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(
      {required this.film_id, required this.film_ad, required this.film_yil, required this.kategori, required this.yonetmen});

}
