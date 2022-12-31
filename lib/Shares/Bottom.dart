import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  String pp, ret, pro;
  Bottom(this.pp, this.ret, this.pro);

  @override
  Widget build(BuildContext context) {
    double km = MediaQuery.of(context).size.width.toDouble();
    double mm = MediaQuery.of(context).size.width.toDouble() * 0.05;
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: km * 0.65,
      margin: EdgeInsets.fromLTRB(10, mm, 10, 5),
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
      child: Column(
        children: [
          Spacer(),
          Text(
            "Total Return",
            style: TextStyle(
                fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w200),
          ),
          Text(
            ret,
            style: TextStyle(
                fontSize: 45, color: Colors.amber, fontWeight: FontWeight.w100),
          ),
          Spacer(),
          Text(
            pp,
            style: TextStyle(
                fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w200),
          ),
          Text(
            pro,
            style: TextStyle(
                fontSize: 45, color: Colors.amber, fontWeight: FontWeight.w100),
          ),
          Spacer(),
        ],
      ),
    );
    ;
  }
}
