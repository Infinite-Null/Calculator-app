import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String disp;
  void Function() ini;
  DateTime date1;
  Input(this.disp, this.ini, this.date1);
  @override
  Widget build(BuildContext context) {
    double km = MediaQuery.of(context).size.width.toDouble() * 0.19;
    double mm = MediaQuery.of(context).size.width.toDouble() * 0.05;
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      height: km,
      width: double.infinity,
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
      child: Row(
        children: [
          Text(
            disp,
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.grey, fontSize: 20),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: ini,
            child: Text('${date1.year}/${date1.month}/${date1.day}',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(7, 255, 255, 255),
                fixedSize: Size(150, 57),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
          )
        ],
      ),
    );
  }
}
