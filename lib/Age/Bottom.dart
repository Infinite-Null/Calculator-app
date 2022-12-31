import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  String a, b, c;
  Bottom(this.a, this.b, this.c);
  @override
  Widget build(BuildContext context) {
    double km = MediaQuery.of(context).size.width.toDouble() * 1;
    double mm = MediaQuery.of(context).size.width.toDouble() * 0.04;
    double re = MediaQuery.of(context).size.width.toDouble() * 0.4;
    double ne = MediaQuery.of(context).size.height.toDouble() * 0.2;
    return Container(
      width: double.infinity,
      height: ne * 0.8,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color.fromARGB(175, 30, 30, 30),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(82, 33, 33, 33),
              offset: Offset(-4.0, -4.0),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Color.fromARGB(175, 42, 42, 42),
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Text(
                "Years",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 25),
              ),
              Spacer(),
              Text(
                "Months",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 25),
              ),
              Spacer(),
              Text(
                "Days",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 25),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Text(
                a,
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w200,
                    fontSize: 35),
              ),
              Spacer(),
              Text(
                b,
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w200,
                    fontSize: 35),
              ),
              Spacer(),
              Text(
                c,
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w200,
                    fontSize: 35),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
