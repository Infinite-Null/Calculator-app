import 'package:calculator/Age/Age.dart';
import 'package:calculator/DateDifference/DateDifference.dart';
import 'package:calculator/NAV_Page/Conti.dart';
import 'package:calculator/Shares/Share.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void na(int n) {
      if (n == 1) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Age()));
      }
      if (n == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Shares()));
      }
      if (n == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DateDifference()));
      }
    }

    double mm;
    mm = MediaQuery.of(context).size.width.toDouble() * 0.05;
    double mme;
    mme = MediaQuery.of(context).size.width.toDouble();
    double km;
    km = MediaQuery.of(context).size.width.toDouble() * 0.45;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
      ),
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Cont('Age', Icons.cake_outlined, (() {
                na(1);
              })),
              Cont('Shares', Icons.monetization_on, (() {
                na(2);
              }))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Cont('Date', Icons.date_range_outlined, (() {
                na(3);
              })),
              Cont('More Coming Soon', Icons.more, (() {
                na(4);
              }))
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
