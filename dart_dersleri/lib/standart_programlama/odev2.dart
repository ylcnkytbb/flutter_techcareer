class Odev2 {

  void dikdortgenCevre(int kk, int uk) {
    int dCevre;

    dCevre = 2 * (kk + uk);
    print('Dikdörtgenin Çevresi: $dCevre');
    print('-----------------------------');
  }

  int factorial(int n) {
    int sonuc = 1;
    for (int i = 1; i <= n; i++) {
      sonuc *= i;
    }
    return sonuc;
  }

  void kelimeHesapla(String kelime) {
    for (int i = 0; i <= kelime.length; i++) {
      print(kelime[i]);
    }
  }

  /*int main()
  {
    double N = 20.0;

    // Function call
    print("Temperature in Fahrenheit : ",
        celsius_to_fahrenheit(N));
    return 0;*/

 /*double convertor(double c){
    double f;
    double c;
    f = c * (1.8 +32);
 }
  return f;*/
}
//hocam merhaba ben birkaç gundur çok yoğundum o yüzden tamamlayamadım simdi de farklı bir eğitimdeyim dersten once gondermiş olmak
//için size atıyorum.Kusura bakmayın , dersten sonra tamamlayacağım :)

