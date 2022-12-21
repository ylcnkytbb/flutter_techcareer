import 'package:dart_dersleri/nesne_tabanli_programlama/kutu_renk.dart';

void main() {
  renkBul(20, KutuRenk.mavi);
}
  void renkBul(int adet, KutuRenk renk) {
    switch (renk) {
      case KutuRenk.mavi:
        print('Adet: ${adet * 10}');
        break;
      case KutuRenk.beyaz :
        print('Adet: ${adet * 20}');
        break;
      case KutuRenk.yesil :
        print('Adet: ${adet * 30}');


    }
  }
