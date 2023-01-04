import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_bir.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_iki.dart';

class DrawerSayfa extends StatefulWidget {
  const DrawerSayfa({Key? key}) : super(key: key);

  @override
  State<DrawerSayfa> createState() => _DrawerSayfaState();
}

class _DrawerSayfaState extends State<DrawerSayfa> {
  int secilenIndeks = 0;
  var sayfaListesi = [const SayfaBir(), const SayfaIki()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),backgroundColor: Colors.deepPurpleAccent,
      ),
      body: sayfaListesi[secilenIndeks],
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, //varolan kenar bosluklarını sıfırla
          children: [
            const DrawerHeader //menu baslığı
              (child: Text('Merhaba',style: TextStyle(color: Colors.white,fontSize: 30),),
           decoration: BoxDecoration(color: Colors.deepPurpleAccent),

            ),
            ListTile(
              title: const Text('Bir'),
              leading: const Icon(Icons.looks_one_outlined), //leading: icon oluştururuyor
            onTap: () {
                setState(() {
                  secilenIndeks = 0;
                });
                Navigator.pop(context); //geri çıkmak için
            },
            ),
            ListTile(
              title: const Text('İki'),
              leading: const Icon(Icons.looks_two_outlined), //leading: icon oluştururuyor
              onTap: () {
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
