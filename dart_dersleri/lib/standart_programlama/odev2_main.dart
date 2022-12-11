import 'package:dart_dersleri/standart_programlama/odev2.dart';

void main() {
  var odev = Odev2();
  odev.dikdortgenCevre(5,30);
  var calculate = odev.factorial(5);
  print('Faktoriyel Hesap: $calculate');
  print('-----------------------------');
  odev.kelimeHesapla('ahmet');
  print('-----------------------------');
  /*var temp = odev.convertor(172.4);
  print('Oda sıcaklığı: $temp');
  print('-----------------------------');*/
 /*double celsius_to_fahrenheit(double N)
  {
    return ((N * 9.0 / 5.0) + 32.0);
  }*/
}


