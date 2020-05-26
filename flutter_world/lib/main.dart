import 'package:flutter/material.dart';
import 'package:flutterworld/screen/home_screen.dart';
//import 'package:flutterworld/screen/like_screen.dart';
//import 'package:flutterworld/screen/more_screen.dart';
//import 'package:flutterworld/screen/search_screen.dart';
import 'package:flutterworld/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;     //Tab controller for all
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lukifliex',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(child: Center(child: Text('Search'),),),
              Container(child: Center(child: Text('Save'),),),
              Container(child: Center(child: Text('More'),),),
              //HomeScreen(),
              //SearchScreen(),
              //LikeScreen(),
              //MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}