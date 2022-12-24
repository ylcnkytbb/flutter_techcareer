import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class KisiDetaySayfa extends StatefulWidget {
Kisiler kisi;
KisiDetaySayfa({required this.kisi});

  @override
  State<KisiDetaySayfa> createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {
  var tfKisiAd = TextEditingController();
  var tfKisiTel = TextEditingController();

  @override
  void initState() { //sayfa acıldığı gibi çalısacak
    super.initState();
    var kisi = widget.kisi;
    tfKisiAd.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }
  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print('Kişi Güncelle: $kisi_id - $kisi_ad - $kisi_tel');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kişi Detay'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAd, decoration: const InputDecoration(hintText: 'Kişi Ad'),),
              TextField(controller: tfKisiTel, decoration: const InputDecoration(hintText: 'Kişi Tel'),),
              ElevatedButton(onPressed: (){
                guncelle(widget.kisi.kisi_id, tfKisiAd.text, tfKisiTel.text );
              }, child: const Text('Güncelle')),
            ],
          ),
        ),
      ),
    );
  }
}
