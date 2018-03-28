import 'package:flutter/material.dart';

import 'package:flutterdo/screens/Calender/index.dart';
import 'package:flutterdo/screens/CalenderWeek/index.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/calender": (BuildContext context) => new Calender(),
    "/calenderweek": (BuildContext context) => new CalenderWeek(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Calender Design",
      debugShowCheckedModeBanner: false,
      home: new Calender(),
      routes: routes,
    ));
  }
}
