void main() {
  //1,2,3
  for (var i = 1; i < 4; i++) {
    print('Döngü 1 : $i');
  }
  //10 ile 20 , 5 er artsın
  for (var x = 10; x < 21; x += 5) {
    print('Döngü 2 : $x');
  }
  //20 ile 10, 5 er azalsın
  for(var y = 20; y>9; y-=5){
    print('Döngü 3: $y');
  }

  //1,2,3
  var sayac = 1;
  while(sayac<4){
    print('Döngü 4: $sayac');
    sayac++;
  }
  //1,2,3,4,5
  for(var i=1;i<6;i++){
    if(i == 3){
      break; //break ve contınue komutu if dongüsü ile çalısır
    }
    print('Döngü 5: $i');
  }

  for(var i=1;i<6;i++){
    if(i == 3){
      continue; //break ve contınue komutu if dongüsü ile çalısır
    }
    print('Döngü 6: $i');
  }
}