import 'package:flutter/material.dart';
import 'package:flutterworld/model/model_movie.dart';

class HomeScreen extends StatefulWidget{
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap(
        {
          'title' : '사랑의 불시착',
          'keyword' : '사랑/로맨스/판타지',
          'poster' : 'test_movie_1.png',
          'like' : false
        }
    )
  ];
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TapBar();
  }
}

class TapBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Image.asset('images/bbongflix_logo.png', fit: BoxFit.contain, height: 25,),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            'TV Program',
            style: TextStyle(fontSize: 14),
          ),
        ), Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            'Movie',
            style: TextStyle(fontSize: 14),
          ),
        ), Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            'Stared Contents',
            style: TextStyle(fontSize: 14),
          ),
        ),
        ],
      )
    );
  }
}