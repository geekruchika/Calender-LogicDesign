import 'package:flutter/material.dart';
import 'style.dart';
import 'package:flutterdo/components/Task.dart';
import 'package:flutterdo/components/calenderView.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

int month1 = 0;

class Calender extends StatefulWidget {
  const Calender({Key key}) : super(key: key);

  @override
  CalenderState createState() => new CalenderState();
}

class CalenderState extends State<Calender> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int m = new DateTime.now().month - 1;
  String month = new DateFormat.MMMM().format(
    new DateTime.now(),
  );
  DateTime now = new DateTime.now();
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

  void _select(String selectedMonth) {
    setState(() {
      month = selectedMonth;
      m = months.indexOf(selectedMonth);
    });
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    month1 = m + 1;
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        bottomOpacity: 0.0,
        backgroundColor: const Color.fromRGBO(80, 210, 194, 1.0),
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        title: new Text(
          month,
          style: new TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
        actions: <Widget>[
          new PopupMenuButton<String>(
              icon: new Icon(
                Icons.arrow_drop_down,
                size: 35.0,
                color: Colors.white,
              ),
              onSelected: _select,
              itemBuilder: (BuildContext context) => months
                  .map((String usertoshow) => new PopupMenuItem<String>(
                        value: usertoshow,
                        child: new Text(usertoshow),
                      ))
                  .toList()),
          new IconButton(
            icon: new Icon(
              Icons.add,
              color: Colors.white,
            ),
            iconSize: 40.0,
            onPressed: null,
          ),
        ],
      ),
      floatingActionButton: new IconButton(
          iconSize: 60.0,
          color: Colors.blueAccent,
          icon: new Icon(
            Icons.next_week,
            color: const Color.fromRGBO(80, 210, 194, 1.0),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/calenderweek");
          }),
      body: new SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: screenSize.width,
              height: screenSize.height / 3,
              decoration: new BoxDecoration(
                color: const Color.fromRGBO(101, 99, 164, 1.0),
              ),
              child: new CalenderView(
                month: m + 1,
              ),
            ),
            new Task(
              title: "New Icons",
              subtitle: "Mobile App",
              time: "08:30",
              ampm: "AM",
              completed: true,
            ),
            new Task(
                title: "Design Stand Up",
                subtitle: "Hangouts",
                time: "14:00",
                ampm: "PM",
                completed: false,
                av1: avatar1,
                av2: avatar2,
                av3: avatar3),
            new Task(
                title: "Design Stand Up",
                subtitle: "Hangouts",
                time: "14:00",
                ampm: "PM",
                completed: false,
                av1: avatar1,
                av2: avatar2,
                av3: avatar3),
            new Task(
                title: "Design Stand Up",
                subtitle: "Hangouts",
                time: "14:00",
                ampm: "PM",
                completed: false,
                av1: avatar1,
                av2: avatar2,
                av3: avatar3),
            new Task(
                title: "Design Stand Up",
                subtitle: "Hangouts",
                time: "14:00",
                ampm: "PM",
                completed: false,
                av1: avatar1,
                av2: avatar2,
                av3: avatar3),
          ],
        ),
      ),
    );
  }
}
