import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  State<Anasayfa> createState() => _AnasayfaState();
  String alinanVeri = '';
  var tfKontrol = TextEditingController();
  String resimAdi = 'baklava.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('widgets kullanımı'),
        ),
        body: Center(
            child: Column(
          children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                controller: tfKontrol,
                decoration: const InputDecoration(
                    hintText:
                        'Veri'), //kullanıcı burayı seçtiğinde yazılı olana uygun bir klavye acılmalı
                keyboardType: TextInputType.number,
                obscureText: true, //password görünümü -- noktalı
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    alinanVeri = tfKontrol.text;
                  });
                },
                child: Text('Yap')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = 'kofte.png';
                      });
                    },
                    child: Text('Resim 1')),
                //Image.asset('resimler/$resimAdi'), //bu yol localden resim kullanmak için
                SizedBox(width: 48, height: 48,
                    child: Image.network('http://kasimadalan.pe.hu/yemekler/resimler/$resimAdi')), //bu yapı boyutlandırma yapmaz
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = 'ayran.png';
                      });
                    },
                    child: Text('Resim 2')),
              ],
            ),
          ],
        )));
  }
}
