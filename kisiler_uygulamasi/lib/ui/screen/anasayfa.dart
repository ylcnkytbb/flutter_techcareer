import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/screen/kisi_kayit_sayfa.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kisiler'),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ElevatedButton(onPressed: (){
      var kisi = Kisiler(kisi_id: 1, kisi_ad: 'Ali', kisi_tel: '1111');
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  KisiDetaySayfa(kisi: kisi,)));

    }, child: const Text('Detay')),
  ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => const KisiKayitSayfa()));
      },
        child: const Icon(Icons.add),
      ) ,
    );
  }
}
