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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Read TextField'),
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
  String message = "";
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (String value) {
              setState(() {
                message = value;
              });
            },
            decoration: const InputDecoration(hintText: 'Skriv noget...'),),
            Text(
              'You wrote: $message',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField(
              controller: textController,
            ),
            Text('You wrote from Controller: san ${textController.text}'),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Tryk Her'))
          ],
        ),
      ),
    );
  }
}
