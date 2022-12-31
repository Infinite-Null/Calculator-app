import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  String tex;
  IconData x;
  void Function() kem;
  Cont(this.tex, this.x, this.kem);
  @override
  Widget build(BuildContext context) {
    double ker = MediaQuery.of(context).size.width.toDouble() * 0.4;
    double rem = MediaQuery.of(context).size.height.toDouble() * 0.2;
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
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
      child: Column(children: [
        ElevatedButton(
            onPressed: (kem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(x),
                Text(
                  tex,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(ker, rem),
                backgroundColor: Color.fromARGB(7, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27))))
      ]),
    );
  }
}
