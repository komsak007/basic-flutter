// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500", "assets/images/1.jpg"),
    FoodMenu("กระเพราะหมู", "80", "assets/images/2.jpg"),
    FoodMenu("ส้มตำ", "50", "assets/images/3.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('เลือกเมนูอาหาร'),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(
                  food.img,
                  height: 100,
                  width: 100,
                ),
                title: Text(food.name),
                subtitle: Text(food.price),
                onTap: () {
                  print("คุณเลือกเมนูอาหารคือ ${food.name}");
                },
              );
            }));
  }
}
