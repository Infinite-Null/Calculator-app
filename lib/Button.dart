import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String a;
  final void Function() x;
  double b;
  Button({required this.a, this.b = 0.175, required this.x});
  @override
  Widget build(BuildContext context) {
    double ker = MediaQuery.of(context).size.width.toDouble() * b;
    double rem = MediaQuery.of(context).size.height.toDouble() * 0.08;
    print(MediaQuery.of(context).size.height.toDouble());
    print(MediaQuery.of(context).size.width.toDouble());
    if (MediaQuery.of(context).size.height.toDouble() <= 690 ||
        MediaQuery.of(context).size.width.toDouble() <= 340) {
      rem = MediaQuery.of(context).size.height.toDouble() * 0.085;
    }
    return ElevatedButton(
      onPressed: x,
      child: Text(
        a,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 20,
          color: Color.fromARGB(168, 33, 33, 33),
        ),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(ker, rem),
          backgroundColor: Color.fromARGB(7, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
    );
  }
}
