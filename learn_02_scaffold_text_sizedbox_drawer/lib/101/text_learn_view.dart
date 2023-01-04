import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  final String name = 'Veli';

  String? userName;

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            CupertinoButton(child: Text('a'), onPressed: (){}), //iOS görünümü
              TextButton(onPressed: (){}, child: const Text('a')),
              Text( //cmd+left click ile Text clasına gidiyoruz
                'WELCOME $name ${name.length}',
        //('Buy the best one' * 10),
        maxLines: 2, //satır
        overflow: TextOverflow.ellipsis, //iki satırı aşıyorsa .. devam ettir
        textAlign: TextAlign.right,
                style: const TextStyle(
                    wordSpacing: 2, //kelimeler arası bosluk
                    letterSpacing: 2, //harfler arası bosluk
                    decoration: TextDecoration.underline,
                    height: 3,
                    color: Colors.indigoAccent,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                ),
              Text( //cmd+left click ile Text clasına gidiyoruz
                'Hello $name ${name.length}',
                //('Buy the best one' * 10),
                maxLines: 2, //satır
                overflow: TextOverflow.ellipsis, //iki satırı aşıyorsa .. devam ettir
                textAlign: TextAlign.right,
                  style:ProjectStyles.welcomeStyle,              ),
            Text( //cmd+left click ile Text clasına gidiyoruz
              'Hello $name ${name.length}',
              //('Buy the best one' * 10),
              maxLines: 2, //satır
              overflow: TextOverflow.ellipsis, //iki satırı aşıyorsa .. devam ettir
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(userName ?? ''),
            Text(keys.welcome),
        ],
      )),
    );
  }
}
class ProjectStyles { //bunu burda tanımladığımız için styleı tekrar tekrar tanımlamamıza gerek yok
static TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2, //kelimeler arası bosluk
    letterSpacing: 2, //harfler arası bosluk
    decoration: TextDecoration.underline,
    height: 3,
    color: Colors.indigoAccent,
    fontStyle: FontStyle.italic,
    fontSize: 16,
    fontWeight: FontWeight.w600);
}
class ProjectColors {
  static Color welcomeColor = Colors.red;
}
class ProjectKeys {
  final String welcome = 'Merhaba';

}
