import 'package:flutter/material.dart';
import 'package:green_earth/background.dart';
import 'package:green_earth/calender class.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            backLinear(),
            circleDraw(),
            SingleChildScrollView(
              child:Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(width: 5.0,),
                            Icon(Icons.format_list_bulleted,
                              color: Colors.white,
                              size: 33.0,
                            ),
                            SizedBox(width: 10.0,),
                            Stack(
                              children: <Widget>[
                                Icon(Icons.notifications,
                                    color: Colors.white,
                                    size:33.0),
                                Positioned(
                                  right: 3,
                                  child: Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: new BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    constraints: BoxConstraints(
                                      minWidth: 12,
                                      minHeight: 12,
                                    ),
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10.0,),
                        Row(
                          children: <Widget>[
                            Text('Hello User',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(width: 10.0,)
                          ],
                        )
                      ],
                    ),
//                    Column(
//                        children: [displaydates(0),
//                          displaydates(1),
//                          displaydates(2),
//                          displaydates(3),
//                          displaydates(4),]
//                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
