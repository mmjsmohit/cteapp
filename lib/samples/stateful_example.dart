import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({Key? key}) : super(key: key);

  @override
  State<StatefulExample> createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Custom Widget"),),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16)
          ),
          height: 200,
          width: 200,
          // color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(value.toString(), style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                    child: IconButton(onPressed: () {
                      setState(() {
                        value++;
                      });
                    }, icon: Icon(Icons.add),),
                  ),

                  Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                    child: IconButton(onPressed: () {
                      setState(() {
                        value--;
                      });

                    }, icon: Icon(Icons.remove),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
