import 'package:flutter/material.dart';
import 'dart:ui' as ui;

const Color backGround = Color(0xFF092C28);
const Color circle_color = Color(0xFFAAC97B);


class circleDraw extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: CustomPaint(
          painter: DrawFig(context: context),
        ),
      ),

    );
  }
}

class DrawFig extends CustomPainter{
  final BuildContext context;

  DrawFig({this.context});
  void paint(Canvas canvas, Size size) {

    Paint paint =Paint()
      ..shader=ui.Gradient.linear(
        Offset(0,0),
        Offset(1000,2000),
        [
          circle_color,
          Colors.white.withOpacity(0.3),

        ],

      );
    //1
    canvas.drawCircle(Offset(MediaQuery.of(context).size.width/1.08, MediaQuery.of(context).size.height/25),60,paint);
    //2
    canvas.drawCircle(Offset(MediaQuery.of(context).size.width-430, MediaQuery.of(context).size.height/3.3),80, paint);

    //3
    canvas.drawCircle(Offset(MediaQuery.of(context).size.height/2,MediaQuery.of(context).size.height/2),60, paint);
    //4
    canvas.drawCircle(Offset(MediaQuery.of(context).size.width-400,MediaQuery.of(context).size.height-200 ),60, paint);
    //5
    canvas.drawCircle(Offset(MediaQuery.of(context).size.width+70, MediaQuery.of(context).size.height),200, paint);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class backLinear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops:[0.1, 0.2, 0.4, 0.6,0.8,1.0],
            colors: [

              backGround.withOpacity(0.72),
              backGround.withOpacity(0.79),
              backGround.withOpacity(0.82),
              backGround.withOpacity(0.89),
              backGround.withOpacity(0.9),
              backGround,
            ]
        )
    ),
    );
  }
}


