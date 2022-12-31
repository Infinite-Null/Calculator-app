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
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        height: km,
        width: double.infinity,
        margin: EdgeInsets.all(mm),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 33, 33, 33),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(146, 87, 85, 85),
                offset: Offset(4.0, 4.0),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Color.fromARGB(210, 12, 12, 12),
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              )
            ]),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(51, 85, 85, 85),
              borderRadius: BorderRadius.circular(15),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                hid ? '' : inp,
                style: TextStyle(
                    letterSpacing: 2,
                    wordSpacing: 10,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(168, 207, 207, 207)),
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
                    color: Color.fromARGB(168, 207, 207, 207)),
              ),
            ])));
  }
}
