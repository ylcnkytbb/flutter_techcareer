import 'package:bloc_pattern_kullanimi/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int>{ //yonetecegim deger int olacak //extends: miras
  AnasayfaCubit():super(0); //varsayılan değer
  var mrepo = MatematikRepository(); //nesneyi burda olusturmamız lazım

  void toplamaYap(String alinanSayi1, alinanSayi2){
    /*int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1 + sayi2;*/
    emit(mrepo.topla(alinanSayi1, alinanSayi2)); //emit: yaymak
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2){
  emit(mrepo.carp(alinanSayi1, alinanSayi2));
  }
}