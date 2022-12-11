void main(){ //birden fazla koşul olduğu zaman switch yapısı kullanılır
  int gun = 9;

  switch(gun){
    case 1: print('Pazartesi');
    break;
    case 2: print('Salı');
    break;
    case 3: print('Çarşamba');
    break;
    case 4: print('Perşembe');
    break;
    case 5: print('Cuma');
    break;
    case 6: print('Cumartesi');
    break;
    case 7: print('Pazar');
    break;
    default: print('Bğyle bir gün yok!');
    break;

  }

}