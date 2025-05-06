import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Dialog',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

enum Answer { YES, NO }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String answer = '';
  String message = '';

  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = 'Anda memilih: $answer';
    });
  }

  Future<void> confirm(BuildContext context) async {
    var simpleDialog = SimpleDialog(
      title: const Text('Konfirmasi'),
      children: <Widget>[
        Column(
          children: <Widget>[
            const Text('Anda ingin keluar dari Aplikasi?'),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  child: const Text(
                    'Ya',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.YES);
                  },
                ),
                const SizedBox(width: 5.0),
                ElevatedButton(
                  child: const Text('Tidak'),
                  onPressed: () {
                    Navigator.pop(context, Answer.NO);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );

    final result = await showDialog<Answer>(
      context: context,
      builder: (BuildContext context) {
        return simpleDialog;
      },
    );

    if (result == Answer.YES) {
      setAnswer('Ya');
    } else {
      setAnswer('Tidak');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Tentang Aplikasi',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Ini adalah contoh AppBar dengan ikon info.'),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 15.0),
            ElevatedButton(
              child: const Text('Show dialog'),
              onPressed: () {
                confirm(context);
              },
            ),
            const SizedBox(height: 15.0),
            Text(message, style: const TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
