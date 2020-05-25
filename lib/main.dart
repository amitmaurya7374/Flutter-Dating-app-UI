import 'package:dating_app/model/card.dart';
import 'package:dating_app/screen/login_screen.dart';
import 'package:dating_app/screen/mainpage_screen.dart';
import 'package:dating_app/screen/matching_making_screen.dart';
import 'package:dating_app/screen/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screen/starting_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (context)=>UserData(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartingScreen(),
        routes: {
          LoginScreen.routeName:(context)=>LoginScreen(),
          MainPage.routeName:(context)=>MainPage(),
          MatchMakingScreen.routeName:(context)=>MatchMakingScreen(),
          MessageScreen.routeName:(context)=>MessageScreen(),
        },
      ),
    );
  }
}