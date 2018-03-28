import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdo/components/calenderWeekly.dart';
import 'package:intl/intl.dart';

class CalenderWeek extends StatefulWidget {
  const CalenderWeek({Key key}) : super(key: key);

  @override
  CalenderWeekState createState() => new CalenderWeekState();
}

class CalenderWeekState extends State<CalenderWeek> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String month = new DateFormat.MMMM().format(
    new DateTime.now(),
  );
  int index = new DateTime.now().month;
  void _selectforward() {
    if (index < 12)
      setState(() {
        ++index;
        month = months[index - 1];
      });
  }

  void _selectbackward() {
    if (index > 1)
      setState(() {
        --index;
        month = months[index - 1];
      });
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        bottomOpacity: 0.0,
        backgroundColor: const Color.fromRGBO(80, 210, 194, 1.0),
        elevation: 0.0,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: _selectbackward,
            ),
            new Text(
              month.toUpperCase(),
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            new IconButton(
              icon: new Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: _selectforward,
            ),
          ],
        ),
      ),
      floatingActionButton: new IconButton(
          iconSize: 60.0,
          color: Colors.blueAccent,
          icon: new Icon(
            Icons.next_week,
            color: const Color.fromRGBO(80, 210, 194, 1.0),
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      body: new SingleChildScrollView(child: new Calender()),
    );
  }
}
