import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  DateTime from;
  DateTime to;
  String year, month, day;
  Result(this.to, this.from, this.year, this.month, this.day);
  @override
  Widget build(BuildContext context) {
    double km = MediaQuery.of(context).size.width.toDouble() * 1;
    double mm = MediaQuery.of(context).size.width.toDouble() * 0.04;
    double re = MediaQuery.of(context).size.width.toDouble() * 0.4;
    double ne = MediaQuery.of(context).size.height.toDouble() * 0.2;
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
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
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(mm, mm, mm, mm),
            decoration: BoxDecoration(
              color: Color.fromARGB(187, 38, 38, 38),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Difference',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.grey,
                  fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(146, 69, 68, 68),
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
                  year,
                  style: TextStyle(
                      fontSize: 37,
                      color: Colors.amber,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  " Years",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                ),
                Spacer(),
                Text(
                  month,
                  style: TextStyle(
                      fontSize: 37,
                      color: Colors.amber,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  " Months",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                ),
                Spacer(),
                Text(
                  day,
                  style: TextStyle(
                      fontSize: 37,
                      color: Colors.amber,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  " Days",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          Container(
              child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(mm, mm, mm, mm),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(187, 38, 38, 38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            "From:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.amber,
                                fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                          Text(
                            "${from.year}/${from.month}/${from.day}",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            "To:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.amber,
                                fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                          Text(
                            "${to.year}/${to.month}/${to.day}",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
