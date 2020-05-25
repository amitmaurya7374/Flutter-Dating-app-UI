import 'package:dating_app/widget/circle_avatar.dart';
import 'package:dating_app/widget/listview_person.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../model/card.dart';

class MessageScreen extends StatelessWidget {
  static const routeName = '/message-screen';
  @override
  Widget build(BuildContext context) {
    final usersHistory = Provider.of<UserData>(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.repeated,
          colors: [const Color(0xff8971C9), const Color(0xff9673C5)],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            // mainAxisSize: MainAxisSize.min, ////
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 25.0),
                child: Text(
                  'Messages',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Lorem ipsum is simply dummy',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 28,
                      ),
                      labelText: 'Search messages',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff7B65B7),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  // mainAxisSize: MainAxisSize.min, /////////
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'History',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Text(
                      'Show all',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CircleProfile(
                      imagePath: usersHistory.person[index].image,
                    ),
                    itemCount: usersHistory.person.length,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
              // Expanded(
              //   flex: 2,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left:25.0,right: 25.0),
              //     child: Divider(
              //       thickness: 2,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                flex: 3,
                child: ListView.builder(
                  itemBuilder: (context, index) => PersonListItem(
                    imagePath: usersHistory.person[index].image,
                    name: usersHistory.person[index].name,
                    hobby: usersHistory.person[index].hobby1,
                  ),
                  itemCount: usersHistory.person.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
