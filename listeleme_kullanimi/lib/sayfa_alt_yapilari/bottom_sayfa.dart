import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_bir.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_iki.dart';

class BottomSayfa extends StatefulWidget {
  const BottomSayfa({Key? key}) : super(key: key);

  @override
  State<BottomSayfa> createState() => _BottomSayfaState();
}

class _BottomSayfaState extends State<BottomSayfa> {
  int secilenIndeks = 0; //indeksi takip ediyoruz
  var sayfaListesi = [const SayfaBir(), const SayfaIki()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation'),backgroundColor: Colors.deepPurpleAccent,
      ),
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined), label: 'Bir'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined), label: 'İki'),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white38,
        currentIndex: secilenIndeks, //0 ise sıfırıncı 1 ise birinciyi aktif edecek
        onTap: (indeks){
          setState(() {
            secilenIndeks = indeks;
          });
        },
      ),
    );
  }
}
