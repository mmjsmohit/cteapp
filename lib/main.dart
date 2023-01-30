import 'package:flutter/material.dart';
import 'package:myfirstapp/samples/stateful_example.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            width: 5,
            color: Colors.black,
          )),
          // height: 600,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => StatefulExample()
                      ));
                    },
                    child: Text(" Click to open new screen."),
                  ),

                  // height: 100,
                  color: Colors.amber,
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  // height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
