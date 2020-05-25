import 'package:dating_app/screen/matching_making_screen.dart';
import 'package:dating_app/widget/card_item.dart';
import 'package:dating_app/widget/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../model/card.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main-page';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserData>(context);
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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Discover',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        radius: 24.0,
                        backgroundImage: AssetImage(
                          'assets/images/girl_profile.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lorem Ipsum is simply dummy',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Profile',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              
              Expanded(
                // flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CardItem(
                    imagePath: user.person[index].image,
                    name: user.person[index].name,
                    age: user.person[index].age,
                    hobby1: user.person[index].hobby1,
                    hobby2: user.person[index].hobby2,
                    hobby3: user.person[index].hobby3,
                  ),
                  itemCount: user.person.length,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleButton(
                    icon: Icons.close,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  CircleButton(
                    icon: Icons.favorite,
                    onPress: (){
                      Navigator.of(context).pushNamed(MatchMakingScreen.routeName);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
