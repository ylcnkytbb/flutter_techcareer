import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver {
  int sayac = 0;
  bool kontrol = false;

  @override
  void initState() {
    super.initState();
    print('initState() çalıştı');
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    if (state == AppLifecycleState.inactive) {
      print('inactive çalıştı');
    }
    if (state == AppLifecycleState.paused) {
      print('paused çalıştı');
    }
    if (state == AppLifecycleState.resumed) {
      print('resumed çalıştı');
    }
    if (state == AppLifecycleState.detached) {
      print('detached çalıştı');
    }
  }

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  Widget build(BuildContext context) {
    print("build() çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Sayaç : $sayac",
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac += 1; //sayac = sayac + 1;
                  });
                },
                child: const Text("TIKLA")),
            ElevatedButton(
                onPressed: () {
                  var kisi =
                      Kisiler(ad: 'Mehmet', yas: 23, boy: 1.92, bekar: false);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OyunEkrani(
                                kisi: kisi,
                              ))).then((value) {
                    print('Anasayfaya geri dönüldü');
                  });
                },
                child: const Text("BAŞLA")),
            Visibility(visible: kontrol, child: const Text('Merhaba')),
            Text(
              kontrol ? 'Merhaba' : 'X',
              style: TextStyle(color: kontrol ? Colors.blue : Colors.red),
            ), //FARKLI BİR KOŞULDA YAZABİLİRİZ
            (() {
              if (kontrol) {
                return const Text(
                  'Merhaba',
                  style: TextStyle(color: Colors.blue),
                );
              } else {
                return const Text(
                  'X',
                  style: TextStyle(color: Colors.red),
                );
              }
            }()),
            Text('Merhaba'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = true; //sayac = sayac + 1;
                  });
                },
                child: const Text("DURUM 1 (TRUE)")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = false; //sayac = sayac + 1;
                  });
                },
                child: const Text("DURUM 2 (FALSE)")),
          FutureBuilder<int>( //int dememizin sebebi kullanmak istediğimiz funcın geri dçnüş değeri neyse o
          future: toplama(10, 20), //kullanmak istediğimiz funcı yazıyoruz
            builder: (context,snaphot){
            if(snaphot.hasError){
              return const Text('Hata Oluştu');
            }
    if(snaphot.hasData){
      return Text('Sonuç : ${snaphot.data}');
    }else{
      return const Text('Sonuç yok');
    }
            },
          ),
        ],
      ),
    ),
    );
  }
}
