import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  String ad;
  int yas;
  double boy;
  bool bekar;

  OyunEkrani({required this.ad,required this.yas,required this.boy,required this.bekar});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Oyun Ekranı"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.ad} - ${widget.yas} - ${widget.boy} - ${widget.bekar}"),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani()));
            }, child: const Text("BİTTİ")),
          ],
        ),
      ),
    );
  }
}
