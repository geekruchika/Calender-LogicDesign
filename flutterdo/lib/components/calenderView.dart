import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutterdo/screens/Calender/index.dart';

class CalenderView extends StatefulWidget {
  final int month;
  CalenderView({this.month});

  @override
  CalenderViewState createState() => new CalenderViewState(month: month);
}

class CalenderViewState extends State<CalenderView> {
  final int month;
  String select;
  CalenderViewState({this.month});

  void initState() {
    super.initState();
  }

  List<String> week = ["M", "T", "W", "T", "F", "S", "S"];

  GestureDetector cell(String day) {
    var d = new DateFormat.d().format(new DateTime.now());
    var m = new DateFormat.M().format(new DateTime.now());
    return (new GestureDetector(
      onTap: () {
        setState(() {
          select = day;
        });
      },
      child: new Container(
        width: 25.0,
        height: 25.0,
        decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: (day == select) || (m == (month1).toString() && day == d)
                ? const Color.fromRGBO(80, 210, 194, 1.0)
                : const Color.fromRGBO(101, 99, 164, 1.0)),
        child: new Center(
          child: new Text(
            day,
            style: new TextStyle(
                color: const Color(0XFFFFFFFF),
                fontSize: 16.0,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    ));
  }

  double dayofweek(int d, int m, int y) {
    List<int> t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4];
    if (m < 3) y = y - m;
    return (y + y / 4 - y / 100 + y / 400 + t[m - 1] + d) % 7;
  }

  int totaldays(int month) {
    if (month == 2)
      return (28);
    else if (month == 4 || month == 6 || month == 9 || month == 11)
      return (30);
    else
      return (31);
  }

  @override
  Widget build(BuildContext context) {
    double a = dayofweek(1, month1, 2018);
    var firstDayMonth = a.round();
    var totalDaysMonth = totaldays(month1);
    var i = 0;
    var j = 0;
    var k = 0;
    var s = 0;
    return (new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.map((String w) {
            return (cell(w));
          }).toList(),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.map((String w) {
            if ((s < 1 && firstDayMonth == 6) ||
                (s < 2 && firstDayMonth == 7)) {
              s++;
              ++j;
              return (cell((totalDaysMonth - k++).toString()));
            } else if (++j >= firstDayMonth) {
              i++;
              return (cell(i.toString()));
            } else
              return (cell(" "));
          }).toList(),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.map((String w) {
            i++;
            return (cell(i.toString()));
          }).toList(),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.map((String w) {
            i++;
            return (cell(i.toString()));
          }).toList(),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.map((String w) {
            i++;
            return (cell(i.toString()));
          }).toList(),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.map((String w) {
            i++;
            return (i <= totalDaysMonth ? cell(i.toString()) : cell(" "));
          }).toList(),
        ),
      ],
    ));
  }
}
