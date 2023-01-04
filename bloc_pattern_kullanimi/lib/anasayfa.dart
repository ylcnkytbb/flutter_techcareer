import 'package:bloc_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//bloc: bussines logic component
//cubit


class Anasayfa extends StatelessWidget {
  int sonuc = 0;

  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Kullanımı'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit,int>( //hangi cubit calıscak hangi cubiti dinliycez
                builder: (context,s){ //sonuc da yazılabilirdi
                  return Text(
                    s.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ), //bu bir alıcı
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: 'Sayi1'),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: 'Sayi2'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String alinanSayi1 = tfSayi1.text;
                        String alinanSayi2 = tfSayi2.text;
                        context.read<AnasayfaCubit>().toplamaYap(alinanSayi1, alinanSayi2);
                        },
                      child: const Text('Toplama')),
                  ElevatedButton(
                      onPressed: () {
                        String alinanSayi1 = tfSayi1.text;
                        String alinanSayi2 = tfSayi2.text;
                        context.read<AnasayfaCubit>().carpmaYap(alinanSayi1, alinanSayi2);
                      },
                      child: const Text('Çarpma')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
