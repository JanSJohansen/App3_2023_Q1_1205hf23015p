import 'package:flutter/material.dart';
import 'package:two_activities/pageTwo.dart';

void main() {
  runApp(const MaterialApp(
        title: 'Two Pages',
        home: PageOne(),
     )
  );
}

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String? messageFromPage2 = "Here it comes....";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(title: Text('Page One')),
            body: Column(
              children: [
                Text('From Page 2: $messageFromPage2'),
                ElevatedButton(
                    onPressed: () {
                      awaitReturnValueFromPage2(context);
                    },
                    child: Text('Go to Page 2'))
              ],
            ));
  }

  void awaitReturnValueFromPage2(BuildContext context) async {
    var result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageTwo(),
        ));

    setState(() {
      messageFromPage2 = result;
    });
  }
}
