import 'package:dart_dersleri/nesne_tabanli_programlama/paket1/A.dart';

class B {
  void metod(){
    var a = A(); //bundan sonra yukarıya otomatik import edilir.
    // bu şu demektir: bu paket paketlerin içinde yok bunu manuel ekliyoruz.
  }
}