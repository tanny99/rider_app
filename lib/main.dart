import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> names = <String>['Robert', 'Micheal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rider App'),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    height: 50,
                    margin: EdgeInsets.all(2),


                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('${names[index]}',
                        style: TextStyle(fontSize: 18),
                      ),

                    ),

                  );
                }
            ),
          ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(38.0),
                child: SizedBox(
                  width: 100.0,
                  height: 50.0,

                  child: ElevatedButton(onPressed: (){}, child: Text('Add'),style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color(0xFF6558F5)),)),
                ),
              ),
            )
          ],
        )
    );
  }
}