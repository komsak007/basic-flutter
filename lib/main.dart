// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  const app = Myapp();
  runApp(app);
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    print("เรียกใช้งาน Init State");
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน Build");
    return Scaffold(
      appBar: AppBar(
        title: Text('บัญชีของฉัน'),
      ),
      body: Column(
        children: [
          Text(
            "${number}",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
