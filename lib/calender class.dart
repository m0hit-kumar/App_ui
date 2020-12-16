import 'package:flutter/material.dart';

//class calender extends StatefulWidget {
//  @override
//  _calenderState createState() => _calenderState();
//}
//
//class _calenderState extends State<calender> {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//
//      ],
//    );
//  }
//}
Widget displaydates(int week) {
  return SizedBox(
    height: 100,
    child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int position) {
          return Row(
            children: <Widget>[
              for (int i = 1; i < 8; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print(position);
                    },
                    child: Text(
                      ((week * 7) + i).toString() + " ",
                      style: TextStyle(),
                    ),
                  ),
                ),
            ],
          );
        }),
  );
}
