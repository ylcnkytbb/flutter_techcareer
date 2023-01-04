import 'package:flutter/material.dart';

class SabitListeSayfa extends StatefulWidget {
  const SabitListeSayfa({Key? key}) : super(key: key);

  @override
  State<SabitListeSayfa> createState() => _SabitListeSayfaState();
}

class _SabitListeSayfaState extends State<SabitListeSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sabit Liste"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 / 1,
        children: [
          ListTile(
            leading: const Icon(Icons.sunny),
            title: const Text("Güneş"),
            subtitle: const Text("Güneş alt başlık"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("güneş tıklandı");
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_2),
            title: const Text("Ay"),
            subtitle: const Text("Ay alt başlık"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("ay tıklandı");
            },
          ),
          GestureDetector(
            onTap: () {
              print("Yıldız tıklandı");
            },
            child: Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 35),
                    child: Icon(
                      Icons.star,
                      color: Colors.black54,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Yıldız",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Yıldız alt başlık",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
