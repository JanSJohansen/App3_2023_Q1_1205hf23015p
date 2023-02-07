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

enum Elev{Peter, Muhmen, Julian, Jeppe, Nicholas, Alexander, MathiasS, 
        Nicolaj, Luan, Frederik, Ramazan, Daniel, Michael, Michael2,
        Nicklas, MathiasPlum, KimL, JanJ}



class _MyHomePageState extends State<MyHomePage> {
 Elev? _elev;

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
            Expanded(
                child: ListView(
                  children:
                          Elev.values.map((Elev elev)
                          {
                return ListTile(
                  title: Text(elev.name),
                  leading: Radio<Elev>(
                    value: elev,
                    groupValue: _elev,
                    onChanged: (Elev? value){
                      setState(()
                      {
                        _elev = value;
                      });
                    },)
                );
                          }).toList()
                ),
              ),
            Container(
              height: 100,
              child: Text(_elev!.name, 
              style: TextStyle(fontSize: 25.0 ),))
          ],
        ),
      ),
     
    );
  }
}


//items: ClassType.values.map((ClassType classType) {
  //    return DropdownMenuItem<ClassType>(
    //    value: classType,
      //  child: Text(classType.toString()));
   // }).toList();