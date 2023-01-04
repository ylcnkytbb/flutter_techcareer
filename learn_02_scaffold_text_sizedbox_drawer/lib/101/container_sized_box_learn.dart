import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  //snippet : stless
  const ContainerSizedBoxLearn({Key? key})
      : super(
            key:
                key); //bunun bir ekran çizimi olmasını istiyorsak statelesswidget ile sarmalıyoruz

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            //iskelet kutu oluşturur
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(), //shrink:ekranda boş bir alan oluşturmak için
          SizedBox.square(
            //50*50lik bir kare
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 100, minHeight: 10, maxHeight: 60),
            child: Text('aa' * 100, maxLines: 2),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
          decoration: ProjectUtility.boxDecoration,

          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
  // color: Colors.indigoAccent,
  gradient:const LinearGradient(colors: [Colors.red, Colors.black]), //yukardan kırmızı golge asagıdan siyah golge
  boxShadow: const [BoxShadow(
  color: Colors.green, offset: Offset(0.1,1),blurRadius: 12 ),
  ],
  //shape:BoxShape.circle,
  border: Border.all(width:10, color: Colors.white12 ));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)],
      border: Border.all(width: 10, color: Colors.white12));
}
