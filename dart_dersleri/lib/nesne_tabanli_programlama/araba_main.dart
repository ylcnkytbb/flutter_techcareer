import 'dart:collection';

import 'package:dart_dersleri/nesne_tabanli_programlama/araba.dart';

void main(){
  //Nesne Oluşturma
  var bmw = Araba(renk: 'Mavi', hiz: 100, calisiyorMu: true);
  //Değer Atama

  //bmw.renk = 'Mavi';
  //bmw.hiz = 100;
  //bmw.calisiyorMu = true;

  //Değer Okuma
  /*print('Renk: ${bmw.renk}');
  print('Hız: ${bmw.hiz}');
  print('Çalışıyor Mu: ${bmw.calisiyorMu}');*/
  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.hizlan(100);
  bmw.bilgiAl();
  bmw.yavasla(25);
  bmw.bilgiAl();


  var sahin = Araba(renk: 'Beyaz', hiz: 0, calisiyorMu: false);
  //sahin.renk = 'Beyaz';
  //sahin.hiz = 0;
  //sahin.calisiyorMu = false;

  /*print('Renk: ${sahin.renk}');
  print('Hız: ${sahin.hiz}');
  print('Çalışıyor Mu: ${sahin.calisiyorMu}');*/
  sahin.bilgiAl();
  sahin.calistir();
  sahin.bilgiAl();
  sahin.hizlan(40);
  sahin.bilgiAl();
  sahin.yavasla(20);
  sahin.bilgiAl();

}