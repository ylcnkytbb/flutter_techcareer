import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class MyChip extends StatelessWidget {
  String icerik;
  MyChip({required this.icerik});
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(
          backgroundColor: anaRenk,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
      ),
    );
  }
}
