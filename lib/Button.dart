import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String a;
  final void Function() x;
  double b;
  Button({required this.a, this.b = 78, required this.x});
  @override
  Widget build(BuildContext context) {
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
          fixedSize: Size(b, 70),
          backgroundColor: Color.fromARGB(7, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
    );
  }
}
