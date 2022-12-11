import 'package:dart_dersleri/nesne_tabanli_programlama/asinifi.dart';

void main(){
  var a = ASinifi();

  //Standart Kullanım
  //print(a.degisken);
  //a.metod();

  //Sanal Nesne - İsimsiz Nesne
  //print(ASinifi().degisken);
  //ASinifi().metod();//2. sanal nesne -- bu kullanım çok önerilmez

  //sanal nesne yazımı ve static nesne yazımı arasındaki fark onemli !!! MÜLAKAT

  //static kullanımı: direkt sınıf ismi ile erişebildiğim değisken ve metodlar için kullanıyoruz!!

  //---Static Kullanımı---
  print(ASinifi.degisken);
  ASinifi.metod();
}