// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  late String title;
  late double amount;
  late Color color;
  late double size;

  MoneyBox(this.title, this.amount, this.color, this.size, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              '${NumberFormat("#,###.##").format(amount)}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
