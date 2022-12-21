import 'package:flutter/material.dart';
import 'bolum.dart';
import 'my_chip.dart';
import 'renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yüksekliği : $ekranYuksekligi");
    print("Ekran genişliği  : $ekranGenisligi");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza",style: TextStyle(fontFamily: "Pacifico",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Beef Cheese",style: TextStyle(fontSize: ekranGenisligi/12,color: anaRenk,fontWeight: FontWeight.bold),),
          Image.asset("resimler/pizza_resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //left - start - leading
            //right - end - trailing
            children: [
              MyChip(icerik: "Cheese"),
              MyChip(icerik: "Sausage"),
              MyChip(icerik: "Olive"),
              MyChip(icerik: "Pepper"),
            ],
          ),
          Bolum(yazi1: "20 min", yazi2: "Delivery", yazi3: "Meat lover , get ready to meet your pizza !"),
          Padding(
            padding:  EdgeInsets.only(left: ekranGenisligi/41,right: ekranGenisligi/41),
            child: Row(
              children: [
                Text("\$ 5.98",style: TextStyle(fontSize: 44,color: anaRenk,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: ekranGenisligi/2,height: ekranYuksekligi/14,
                  child: TextButton(
                      onPressed: (){},
                      child: Text("ADD TO CART",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                      style: TextButton.styleFrom(backgroundColor: anaRenk),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


