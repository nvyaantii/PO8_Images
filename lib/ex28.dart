import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        backgroundColor: Colors.blue, // <-- warna AppBar jadi biru
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(height: 15.0),
            const Text(
              'PlayfairDisplay-Regular',
              style: TextStyle(fontSize: 30),
            ),
            Container(height: 15.0),
            const Text(
              'PlayfairDisplay-Italic',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
            ),
            Container(height: 15.0),
            const Text(
              'PlayfairDisplay-Bold',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
