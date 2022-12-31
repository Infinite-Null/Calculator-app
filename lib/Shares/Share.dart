import 'package:calculator/Shares/Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shares extends StatefulWidget {
  @override
  State<Shares> createState() => _SharesState();
}

class _SharesState extends State<Shares> {
  final buying = TextEditingController();
  final selling = TextEditingController();
  final number = TextEditingController();
  String pl = '';
  String ret = '';
  String totalret = '';
  void calcu() {
    if (buying.text == '' || selling.text == '' || number.text == '') {
    } else {
      int numb = int.parse(number.text);
      int sell = int.parse(selling.text);
      int buy = int.parse(buying.text);
      if (sell > buy) {
        setState(() {
          ret = ((sell - buy) * numb).toString();
          totalret = (sell * numb).toString();
          pl = "Profit";
        });
      } else if (sell < buy) {
        setState(() {
          pl = "Loss";
          ret = (-(sell - buy) * numb).toString();
          totalret = (sell * numb).toString();
        });
      } else {
        setState(() {
          pl = "Netural";
          ret = ((sell - buy) * numb).toString();
          totalret = (sell * numb).toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double km = MediaQuery.of(context).size.width.toDouble();
    double mm = MediaQuery.of(context).size.width.toDouble() * 0.05;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text("SHARE")),
        titleTextStyle:
            TextStyle(letterSpacing: 2.5, fontWeight: FontWeight.w900),
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
        foregroundColor: Color.fromARGB(165, 255, 255, 255),
      ),
      body: Column(children: [
        Container(
            padding: EdgeInsets.all(15),
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
            child: Column(
              children: [
                Text(
                  "Number of Shares",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.amber,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 55, 55, 55), width: 4),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          number.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.amber,
                        ),
                      )),
                  controller: number,
                ),
                Text(
                  "Buying Price",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.amber,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 55, 55, 55), width: 4),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          buying.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.amber,
                        ),
                      )),
                  controller: buying,
                ),
                Text(
                  "Selling Price",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.amber,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 55, 55, 55), width: 4),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          selling.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.amber,
                        ),
                      )),
                  controller: selling,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: calcu,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(212, 244, 187, 16),
                        fixedSize: Size(
                            MediaQuery.of(context).size.width.toDouble() * 0.9,
                            MediaQuery.of(context).size.height.toDouble() *
                                0.07)),
                    child: Icon(Icons.search_outlined)),
              ],
            )),
        Bottom(pl, totalret, ret),
      ]),
    );
  }
}
