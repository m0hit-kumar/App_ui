import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


const Color avtar_backGround = Color(0xFF2FCB72);
const Color avtar_backGround1 = Color(0xFF0C3329);
const Color prof_Card = Color(0xFF196F3D);
const Color grade1 = Color(0xFF00b09b);
const Color grade2 = Color(0xFF96c93d);
const Color cool = Color(0xFF181A2F);
const clickedColor = Color(0xFF0C3329);
const unclickedColor = Color(0xFF196F3D);
Color probtn = Color(0xFF0C3329);
Color leadbtn = Color(0xFF196F3D);

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _MyAppState extends State<LeaderBoard> {
  bool profileInfo = true;
  bool leaderBoard = false;

  @override
  Widget build(BuildContext context) {
    final profileHeight = MediaQuery.of(context).size.height * 0.5;
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(200.0, profileHeight),
              child: AppBar(flexibleSpace:Column(children: [
                SizedBox(
                  height: 80,
                ),

                Text(
                  "Sundhar Pichai",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[200],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                Center(
                  child: CircleAvatar(
                    backgroundColor: avtar_backGround.withOpacity(0.1),
                    radius: 80,
                    child: CircleAvatar(
                      backgroundColor: CupertinoColors.activeBlue,
                      radius: 65,
                    ),
                  ),
                ),

              ],),


                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    bottomLeft: Radius.circular(90.0),
                  ),
                ),
                backgroundColor: prof_Card,
                elevation: 0,
                bottom: PreferredSize(preferredSize: Size(200.0,200.0),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TabBar(
                        unselectedLabelColor: Colors.grey[200],
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: avtar_backGround1),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Profile"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Leaderboard"),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),



            body: TabBarView(children: [
              Container(height:profileHeight,child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.alternate_email),
                    title: Text('Username'),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(
                      'Name',
                    ),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email-Id'),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.keyboard_return),
                    title: Text('Logout'),
                  ),
                ],
              ),),
              Container(height:profileHeight,child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.alternate_email),
                    title: Text('Username'),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(
                      'Name',
                    ),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email-Id'),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.keyboard_return),
                    title: Text('Logout'),
                  ),
                ],
              ),),

            ]),
          )),
    );
  }
}
