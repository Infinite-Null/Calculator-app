import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/Age/Input.dart';
import 'package:calculator/DateDifference/result.dart';

class DateDifference extends StatefulWidget {
  @override
  State<DateDifference> createState() => _DateDifferenceState();
}

class _DateDifferenceState extends State<DateDifference> {
  int day = 0;
  int month = 0;
  int year = 0;
  DateTime date = new DateTime.now();
  DateTime current = DateTime.now();
  void init() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                maximumYear: 2100,
                backgroundColor: Color.fromARGB(255, 114, 113, 113),
                initialDateTime: date,
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime newTime) {
                  setState(() {
                    date = newTime;
                  });
                },
              ),
            ));
  }

  void init_tod() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                maximumYear: 2100,
                backgroundColor: Color.fromARGB(255, 114, 113, 113),
                initialDateTime: date,
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime newTime) {
                  setState(() {
                    current = newTime;
                  });
                },
              ),
            ));
  }

  calculateAge() {
    int day_t = current.day;
    int year_t = current.year;
    int month_t = current.month;

    if (current.day < date.day) {
      day_t += 31;
      month_t--;
    }
    if (month_t < date.month) {
      month_t += 12;
      year_t--;
    }
    setState(() {
      day = day_t - date.day;
      year = year_t - date.year;
      month = month_t - date.month;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      appBar: AppBar(
        title: Center(child: Text("DATE")),
        titleTextStyle:
            TextStyle(letterSpacing: 2.5, fontWeight: FontWeight.w900),
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
        foregroundColor: Color.fromARGB(165, 255, 255, 255),
      ),
      body: Column(
        children: [
          Input("From", init, date),
          Input("To", init_tod, current),
          Result(
              current, date, year.toString(), month.toString(), day.toString()),
          ElevatedButton(
              onPressed: calculateAge,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(212, 244, 187, 16),
                  fixedSize: Size(
                      MediaQuery.of(context).size.width.toDouble() * 0.9,
                      MediaQuery.of(context).size.height.toDouble() * 0.07)),
              child: Icon(Icons.search_outlined))
        ],
      ),
    );
  }
}
