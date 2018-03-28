import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String ampm;
  final bool completed;
  final DecorationImage av1, av2, av3;
  Task(
      {this.title,
      this.subtitle,
      this.time,
      this.completed,
      this.ampm,
      this.av1,
      this.av2,
      this.av3});
  @override
  Widget build(BuildContext context) {
    return (new Container(
        decoration: new BoxDecoration(
          border: new Border(
            bottom: new BorderSide(
                width: 1.0, color: const Color.fromRGBO(204, 204, 204, 1.0)),
          ),
        ),
        child: new Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: new Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: new ListTile(
                title: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      child: new Row(
                        children: <Widget>[
                          new Row(
                            children: [
                              new Text(
                                time,
                                style: new TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              new Text(
                                " " + ampm,
                                style: new TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  title,
                                  style: new TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                new Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, bottom: 8.0),
                                  child: new Text(
                                    subtitle,
                                    style: new TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black45),
                                  ),
                                ),
                                av1 != null
                                    ? new Row(
                                        children: <Widget>[
                                          new Container(
                                              width: 25.0,
                                              height: 25.0,
                                              margin: new EdgeInsets.only(
                                                  right: 5.0),
                                              decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: av1,
                                              )),
                                          new Container(
                                              width: 25.0,
                                              height: 25.0,
                                              margin: new EdgeInsets.only(
                                                  right: 5.0),
                                              decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: av2,
                                              )),
                                          new Container(
                                              width: 25.0,
                                              height: 25.0,
                                              margin: new EdgeInsets.only(
                                                  right: 5.0),
                                              decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: av3,
                                              )),
                                        ],
                                      )
                                    : new Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: null,
                trailing: new Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: completed
                          ? const Color.fromRGBO(80, 210, 194, 1.0)
                          : const Color.fromRGBO(214, 103, 206, 1.0)),
                )),
          ),
        )));
  }
}
