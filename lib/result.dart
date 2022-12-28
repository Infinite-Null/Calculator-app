import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String inp = '';
  String out = '';
  final bool hid;
  final double outsiz;
  Result(this.inp, this.out, this.outsiz, this.hid);
  @override
  Widget build(BuildContext context) {
    double mm;
    mm = MediaQuery.of(context).size.width.toDouble() * 0.05;
    double km;
    km = MediaQuery.of(context).size.width.toDouble() * 0.45;
    return Container(
        alignment: Alignment.center,
        height: km,
        width: double.infinity,
        margin: EdgeInsets.all(mm),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              )
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            hid ? '' : inp,
            style: TextStyle(
                letterSpacing: 2,
                wordSpacing: 10,
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(168, 33, 33, 33)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            out,
            style: TextStyle(
                letterSpacing: 2,
                wordSpacing: 10,
                fontSize: outsiz,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(168, 33, 33, 33)),
          ),
        ]));
  }
}
