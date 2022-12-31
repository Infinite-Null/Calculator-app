import 'package:calculator/Age/Bottom.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String year, month, day, nextmonth, nextday;
  Result(this.year, this.month, this.day, this.nextmonth, this.nextday);
  @override
  Widget build(BuildContext context) {
    double km = MediaQuery.of(context).size.width.toDouble() * 1;
    double mm = MediaQuery.of(context).size.width.toDouble() * 0.04;
    double re = MediaQuery.of(context).size.width.toDouble() * 0.4;
    double ne = MediaQuery.of(context).size.height.toDouble() * 0.2;
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      height: km,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(mm, mm, mm, mm),
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
          Container(
            child: Row(
              children: [
                Container(
                  width: re,
                  height: ne,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  padding: EdgeInsets.all(15),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            year,
                            style: TextStyle(
                                fontSize: 55,
                                color: Colors.amber,
                                fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                          Text(
                            " years",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            month,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            " months",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Text(
                            day,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            " days",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: re,
                  height: ne,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  padding: EdgeInsets.all(15),
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
                      Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Birthday",
                        style: TextStyle(
                            color: Color.fromARGB(195, 255, 195, 16),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(Icons.brightness_1_outlined),
                      Spacer(),
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            nextmonth,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            " months",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Text(
                            nextday,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            " days",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Summary",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 25, color: Colors.grey),
          ),
          Bottom(year, month, day),
        ],
      ),
    );
  }
}
