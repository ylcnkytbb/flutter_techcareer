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
  bool switchKontrol = false; //değerleri yönetmek için
  bool checkboxKontrol = false;
  int radioDeger = 0;
  bool progressKontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = 'Türkiye';
  var tfAlert = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState //sayfa ilk açıldığında çalışan fonksiyon
    super.initState();
    ulkelerListesi.add('Türkiye');
    ulkelerListesi.add('İtalya');
    ulkelerListesi.add('Kore');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( //appbar'ın sabit kalmasını sağlıyor
      appBar: AppBar(
        title: const Text('widgets kullanımı'),
      ),
      body: SingleChildScrollView(

        child: Column(children: [
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
              SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(
                      'http://kasimadalan.pe.hu/yemekler/resimler/$resimAdi')), //bu yapı boyutlandırma yapmaz
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = 'ayran.png';
                    });
                  },
                  child: Text('Resim 2')),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: 150,
              child: SwitchListTile(
                  title: const Text('Dart'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: switchKontrol,
                  onChanged: (veri) {
                    //veri true false
                    setState(() {
                      switchKontrol = veri;
                    });
                  }),
            ),
            SizedBox(
              width: 150,
              child: CheckboxListTile(
                  title: const Text('Flutter'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: checkboxKontrol,
                  onChanged: (veri) {
                    //veri true false
                    setState(() {
                      checkboxKontrol = veri!;
                    });
                  }),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: RadioListTile(
                    title: const Text('Barcelona'),
                    value: 1,
                    groupValue: radioDeger,
                    onChanged: (veri) {
                      setState(() {
                        radioDeger = veri!;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: RadioListTile(
                        title: const Text('Real Madrid'),
                        value: 2,
                        groupValue: radioDeger,
                        onChanged: (veri) {
                          setState(() {
                            radioDeger = veri!;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressKontrol = true;
                    });
                  },
                  child: const Text('Başla')),
              Visibility(
                  visible: progressKontrol,
                  child: const CircularProgressIndicator()),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressKontrol = false;
                    });
                  },
                  child: const Text('Dur')),
            ],
          ),
          Text(ilerleme.toInt().toString()),
          Slider(
              min: 0.0,
              max: 100.0,
              value: ilerleme,
              onChanged: (veri) {
                setState(() {
                  ilerleme = veri;
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tfSaat,
                    decoration: const InputDecoration(hintText: 'Saat'),
                  )),
              IconButton(
                  onPressed: () {
                    showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                        .then((value) =>
                            {tfSaat.text = '${value!.hour} : ${value.minute}'});
                  },
                  icon: const Icon(Icons.access_time)),
              SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tfSaat,
                    decoration: const InputDecoration(hintText: 'Tarih'),
                  )),
              IconButton(
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2010),
                            lastDate: DateTime(2030))
                        .then((value) {
                      tfTarih.text =
                          '${value!.day}/${value.month}/${value.year}';
                    });
                  },
                  icon: const Icon(Icons.date_range)),
            ],
          ),
          DropdownButton(
              value: secilenUlke,
              icon: const Icon(Icons.arrow_drop_down),
              items: ulkelerListesi.map((ulke) {
                //e:ülke
                return DropdownMenuItem(
                  child: Text(ulke),
                  value: ulke,
                );
              }).toList(),
              onChanged: (veri) {
                setState(() {
                  secilenUlke = veri!;
                });
              }),
          GestureDetector(
            onTap: (){
              print('Tek tıklandı');
            },
            onDoubleTap: (){
              print('Çift tıklandı');
            },
            onLongPress: (){
              print('Uzun Basıldı');
            },
            child: Container(width: 200, height: 50, color: Colors.red,)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Silmek istiyor musunuz?'),
               action: SnackBarAction(label: 'Evet', onPressed: (){

                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Silindi')));
               },),
              ),
            );
            }, child: const Text('Snackbar')),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.white,
                  content: const Text('İnternet bağlantısı yok', style: TextStyle(color: Colors.indigoAccent),),
                  action: SnackBarAction(label: 'Tekrar dene',textColor: Colors.red, onPressed: (){

                  },),
                ),
              );
            }, child: const Text('Snackbar(ö)')), //özel
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text('Başlık'),
                      content: const Text('İçerik'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context); //geri tuşuna basınca kapanıyor demekki bir pop eklenmiş
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('İptal seçildi')));

                        }, child: const Text('İptal')),
                        TextButton(onPressed: (){
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tamam seçildi')));

                        }, child: const Text('Tamam'))
                      ],
                    );
                  }
                  );

            }, child: const Text('Alert')),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      backgroundColor: Colors.grey,
                      title: const Text('Kayıt İşlemi'),
                      content: TextField(controller: tfAlert, decoration: const InputDecoration(hintText: 'Veri'),),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context); //geri tuşuna basınca kapanıyor demekki bir pop eklenmiş
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('İptal seçildi')));

                        }, child: const Text('İptal',style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: (){
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Alınan Veri ${tfAlert.text}')));

                        }, child: const Text('Kaydet',style: TextStyle(color: Colors.black),)),
                      ],
                    );
                  }
              );

            }, child: const Text('Alerrt(ö)')),
          ],
          ),

          ElevatedButton(
              onPressed: () {
                print('Switch durum: $switchKontrol');
                print('Checkbox durum: $checkboxKontrol');
                print('RadiButton durum: $radioDeger');
                print('Slider durum: $ilerleme');
                print('Seçilen Ülke: $secilenUlke');
              },
              child: const Text('Göster')),
        ]
          ),
      ),
    );
  }
}
