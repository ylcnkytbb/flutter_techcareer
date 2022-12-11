class Araba{ //class isimlerinin baş harfi büyük harfle yazılır

  //late String renk;
  // late int hiz;
  //late bool calisiyorMu;
  //late: daha sonra değer atama yapacağım sözü vermek demektir

  String renk;
  int hiz;
  bool calisiyorMu;

//late kullanımı yerine constructor olusturuyoruz
  Araba({required this.renk,required this.hiz,required this.calisiyorMu}); //cmd+N --cmd+A ile hepsini seç

  void calistir(){
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur(){
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm){
    hiz+=kacKm; //hiz = hiz + kacKm;
  }

  void yavasla(int kacKm){
    hiz-=kacKm;
  }

void bilgiAl(){
  print('-------------------');
  print('Renk: ${renk}');
  print('Hız: ${hiz}');
  print('Çalışıyor Mu: ${calisiyorMu}');

}



}