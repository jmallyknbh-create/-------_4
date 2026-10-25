 import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'اغاني مازن كنبه',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const SongsHomePage(),
    );
  }
}

class SongsHomePage extends StatefulWidget {
  const SongsHomePage({super.key});

  @override
  State<SongsHomePage> createState() => _SongsHomePageState();
}

class _SongsHomePageState extends State<SongsHomePage> {
  // قائمة الأغاني التجريبية
  final List<String> songs = [
    'أغنية 1 - مازن كنبه',
    'أغنية 2 - مازن كنبه',
    'أغنية 3 - مازن كنبه',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جميع اغاني مازن كنبه'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.音乐_note, color: Colors.blueAccent),
              title: Text(songs[index]),
              trailing: const Icon(Icons.play_arrow),
              onTap: () {
                // يمكنك إضافة كود تشغيل الأغنية هنا عند الضغط عليها
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('جاري تشغيل: ${songs[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
