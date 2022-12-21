import 'dart:collection';

void main() {

  //Tanımlama

  var plakalar =HashSet.from([16,34,6]); //listeyi hashsete donduruyoruz
  var meyveler = HashSet<String>();

  //Veri Ekleme
  meyveler.add('Muz');
  meyveler.add('Kiraz');
  meyveler.add('Elma');
  print(meyveler);  //cıktıya dikkat edersen içerik karışık

  meyveler.add('Elma'); //varolan elemanı yeniden listeye dahil etmiyor
  print(meyveler);

  meyveler.add('Amasya Elması');
  print(meyveler);

  String meyve = meyveler.elementAt(2); //2.indeksteki meyveyi getirecek
  print(meyve);

  for(var m in meyveler){
    print('Sonuç: $m');
  }

  for(var i=0;i<meyveler.length;i++){
    print('$i. -> ${meyveler.elementAt(i)}');
  }
  meyveler.remove('Muz');
  print(meyveler);

  meyveler.clear();
  print(meyveler);

}