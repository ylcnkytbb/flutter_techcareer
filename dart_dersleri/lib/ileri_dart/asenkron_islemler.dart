Future<void> main() async{
  print('Verilerin alınması bekleniyor...');
  var veri = await veritabanindanVerAl(); //await da hata olmasın diye fonksiyon Future ve async olmalı
  print('Verilerin alınıyor...');
  print('Alınan Veri: $veri');

}
Future<String> veritabanindanVerAl() async{
  for(var i=1;i<6;i++){
    Future.delayed(Duration(seconds: i),() => print('Alınan Veri Miktarı: %${i*20}')); //gecikme
  }
  return  Future.delayed(Duration(seconds: 5),() => 'Alınan Veri Miktarı:');
}