
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget

{
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
       children: [
          TextButton(
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.greenAccent;
              }
              return Colors.white54;
            })),
            onPressed: () {},
          ),ElevatedButton(onPressed: () {}, child: const Text('data')),
       IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
         FloatingActionButton(
             onPressed: () {
               //servise istek at
               //sayfanın rengini düzenle
             },
                 child: Icon(Icons.add),
         ),
       //const Text('custom') //bu alana buton press vermek istiyorum

         OutlinedButton(//stylefrom ile kolay button sekillendirmesi
         style: OutlinedButton.styleFrom(backgroundColor: Colors.red, padding: const EdgeInsets.all(10)),
         onPressed: () {},
         child: const SizedBox(width: 200, child: const Text('data'))),
       OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.abc), label: const Text('data')),
         InkWell(onTap: () { //tıklamayı onTap veriyor
           },
        child: const Text('custom'))
       ],
      ),
    );
  }
}
//Borders:
//CircleBorder(), RoundedRectangleBorder()
