import 'metodlar.dart';

void main() {
  var metodlar = Metodlar();

  var kenarSayisi = 4;
  var icAci = metodlar.icAcilariHesapla(kenarSayisi);
  print("$kenarSayisi kenarlı dörtgenin bir iç açısı : $icAci°");
  print("**********************************************************");
  var gunSayisi = 28;
  var maas = metodlar.maasHesapla(gunSayisi);
  print("$gunSayisi gun için maaş miktarı $maas₺'dir");
  print("**********************************************************");
  var saat = 5.3;
  var ucret = metodlar.otoparkUcretHesapla(saat);
  print("$saat için otopark ücreti : $ucret₺'dir");
  print("**********************************************************");
  var derece = 26.0;
  var fahrenhiedOlcu = metodlar.fahrenhiedHesapla(derece);
  print("$derece °C için fahrenhied : $fahrenhiedOlcu °F'dir");
  print("**********************************************************");
  double kisa = 12, uzun = 25;
  var dikdortgenCevre = metodlar.dikdortgenKenarHesapla(kisa, uzun);
  print(
      "kısa kenarı : $kisa cm ve uzun kenarı : $uzun cm olan dikdortgenin cevresi : $dikdortgenCevre cm'dir");
  print("**********************************************************");
  var sayi = 8;
  var faktoriel = metodlar.faktorielHesapla(sayi);
  print("$sayi sayısının faktoriyeli : $faktoriel'dir");
  print("**********************************************************");
  var metin =
      "Snowball,'bak yoldaş' demişti. \n'Senin onsuz yapamam dediğin kurdele, köleliğin simgesidir.\nÖzgürlüğün kurdeleden çok daha değerli olduğunu kafan almıyor mu...'\n";
  var aSayisi = metodlar.kacTaneAHarfiVar(metin);
  print("$metin \nmetnindeki a harfi sayisi : $aSayisi");
  print("**********************************************************");
}


