import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Дитячий майданчик online'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title, textAlign: TextAlign.center)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: () {}, child: Text('Головна', style: TextStyle(fontSize: 16))),
                TextButton(onPressed: () {}, child: Text('Публікації', style: TextStyle(fontSize: 16))),
                TextButton(onPressed: () {}, child: Text('Заходи', style: TextStyle(fontSize: 16))),
                TextButton(onPressed: () {}, child: Text('Про нас', style: TextStyle(fontSize: 16))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '«Ми – ваш вихід у випадку карантину!»',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                SizedBox(height: 20),
                Text(
                  'Наші переваги:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('- Надійність'),
                Text('- Оригінальність'),
                Text('- Відповідальність'),
                Text('- Доброчесність'),
                SizedBox(height: 20),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              ],
            ),
          )
        ],
      ),
    );
  }
}