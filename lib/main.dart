import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widget Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 200,
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(
              'Ini adalah contoh penggunaan Container',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ), 
            child: Text('Tombol Elevated'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text('Rating: 4.5'),
            ],
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                'https://picsum.photos/id/7/300/200',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}