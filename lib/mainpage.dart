import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_earth/background.dart';
import 'package:green_earth/calender class.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:calendar_strip/calendar_strip.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  // CalendarController _calendarController;
  // @override
  // void initState(){
  //   super.initState();
  //   _calendarController=CalendarController();
  // }
  //
  // @override
  // void dispose(){
  //   _calendarController.dispose();
  //   super.dispose();
  // }
  DateTime startDate = DateTime.now().subtract(Duration(days: 2));
  DateTime endDate = DateTime.now().add(Duration(days: 2));
  DateTime selectedDate = DateTime.now();
  List<DateTime> markedDates = [
    DateTime.now().subtract(Duration(days: 1)),
    DateTime.now().subtract(Duration(days: 2)),
    DateTime.now().add(Duration(days: 4))
  ];

  @override
  void initState() {
    super.initState();
  }

  onSelect(data) {
    print("Selected Date -> $data");
  }

  onWeekSelect(data) {
    print("Selected week starting at -> $data");
  }

  _monthNameWidget(monthName) {
    return Container(
      child: Text(
        monthName,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          fontStyle: FontStyle.italic,
        ),
      ),
      padding: EdgeInsets.only(top: 8, bottom: 4),
    );
  }

  getMarkedIndicatorWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.only(left: 1, right: 1),
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
      Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      )
    ]);
  }

  dateTileBuilder(
      date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
    bool isSelectedDate = date.compareTo(selectedDate) == 0;
    Color fontColor = isDateOutOfRange ? Colors.black26 : Colors.black87;
    TextStyle normalStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: fontColor);
    TextStyle selectedStyle = TextStyle(
        fontSize: 17, fontWeight: FontWeight.w800, color: Colors.black87);
    TextStyle dayNameStyle = TextStyle(fontSize: 14.5, color: fontColor);
    List<Widget> _children = [
      Text(dayName, style: dayNameStyle),
      Text(date.day.toString(),
          style: !isSelectedDate ? normalStyle : selectedStyle),
    ];

    if (isDateMarked == true) {
      _children.add(getMarkedIndicatorWidget());
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: !isSelectedDate ? Colors.transparent : Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Column(
        children: _children,
      ),
    );
  }
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
                    SizedBox(height: 10.0,),
                    // TableCalendar(
                    //   calendarController: _calendarController,
                    //   initialCalendarFormat: CalendarFormat.week,
                    //   initialSelectedDay: DateTime.now(),
                    //   startingDayOfWeek: StartingDayOfWeek.sunday,
                    //   formatAnimation: FormatAnimation.scale,
                    //   headerStyle: HeaderStyle(
                    //     centerHeaderTitle: true,
                    //     formatButtonVisible: false,
                    //     titleTextStyle: TextStyle(
                    //       color: Colors.green[50],
                    //       fontSize: 17,
                    //     ),
                    //     leftChevronIcon: Icon(Icons.arrow_back_ios,color:Colors.green[50],size: 15,),
                    //     rightChevronIcon: Icon(Icons.arrow_forward_ios,color:Colors.green[50],size: 15,),
                    //     leftChevronMargin: EdgeInsets.only(left: 30),
                    //     rightChevronMargin: EdgeInsets.only(right: 30),
                    //   ),
                    //   calendarStyle: CalendarStyle(
                    //     weekendStyle: TextStyle(
                    //       color: Colors.green[50]
                    //     ),
                    //     weekdayStyle: TextStyle(
                    //         color: Colors.green[50]
                    //     ),
                    //   ),
                    //   daysOfWeekStyle: DaysOfWeekStyle(
                    //     weekendStyle: TextStyle(
                    //       color: Colors.green[50],
                    //     ),
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.rectangle,
                    //       color: Colors.green
                    //     ),
                    //     weekdayStyle: TextStyle(
                    //       color: Colors.green[50]
                    //     )
                    //   ),
                    // ),

//                    Column(
//                        children: [displaydates(0),
//                          displaydates(1),
//                          displaydates(2),
//                          displaydates(3),
//                          displaydates(4),]
//                    ),
                    Container(
                        child: CalendarStrip(
                          startDate: startDate,
                          endDate: endDate,
                          onDateSelected: onSelect,
                          onWeekSelected: onWeekSelect,
                          dateTileBuilder: dateTileBuilder,
                          iconColor: Colors.black87,
                          monthNameWidget: _monthNameWidget,
                          markedDates: markedDates,
                          containerDecoration: BoxDecoration(color: Colors.black12),
                        ))

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
