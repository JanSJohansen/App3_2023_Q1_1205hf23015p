import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Elev{Nicolaj, Luan, Frederik, Ramazan, Daniel}

class _MyHomePageState extends State<MyHomePage> 
{
  Elev? _elev = Elev.Daniel;

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
             ListTile(
              title: Text(Elev.Daniel.name),
              leading: Radio<Elev>(
                groupValue: _elev,
                value: Elev.Daniel,
                onChanged: (Elev? value){
                  setState((){
                    _elev = value;
                    });}
              )
              ),
            ListTile(
              title: Text(Elev.Frederik.name),
              leading: Radio<Elev>(
                groupValue: _elev,
                value: Elev.Frederik,
                onChanged: (Elev? value){
                  setState((){
                    _elev = value;
                    });}
              )
              ),



              Text(_elev!.name),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {
          
        });},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
