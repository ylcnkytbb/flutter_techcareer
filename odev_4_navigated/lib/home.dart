import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(title: Text('Sayfalar Arası Geçiş')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('ANASAYFA'),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
                child: Text('GİT -> A'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=> RouteA() ),
                  );
                }),

            ElevatedButton(child: Text('GİT -> X'), onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder:(context)=> RouteB() ),
            );

            }),
          ])),
    );
  }
}

///////////////////////////////////////////////
///  Route A
///////////////////////////////////////////////
class RouteA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text('SAYFA A')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(child: Text('GİT -> B'), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> RouteB() ),
              );
            }),
          ])),
    );
  }
}

///  Route X
///////////////////////////////////////////////
class RouteX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('SAYFA X')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(child: Text('GİT -> Y'), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> RouteY() ),
              );
            }),
          ])),
    );
  }
}

///////////////////////////////////////////////
/// Route B
///////////////////////////////////////////////
class RouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('SAYFA B')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
           ElevatedButton(child: Text('GİT -> SAYFA Y'), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> RouteY() ),
              );
            }),
          ])),
    );
  }
}

///////////////////////////////////////////////
///   ROUTE Y
///////////////////////////////////////////////
class RouteY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text('SAYFA Y')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(child: Text('Geri Dön'), onPressed: () {
            Navigator.pop(context);
            }),
          ])),
    );
  }
}
