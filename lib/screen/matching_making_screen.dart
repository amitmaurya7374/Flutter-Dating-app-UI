import 'package:dating_app/screen/message_screen.dart';
import 'package:dating_app/widget/action_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchMakingScreen extends StatelessWidget {
  static const routeName = '/match-making';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'It\'s a match !',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff8C75CC)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          // right
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/men.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/woman1.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 60,
                          child: Card(
                            elevation: 20.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'You and Sophia Like Each other',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                'now send him a message',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(height: 80.0,),
              ActionButtion('Send message',(){
                Navigator.of(context).pushNamed(MessageScreen.routeName);
              },),
              SizedBox(height: 10.0,),
              ActionButtion('Keep browsing',(){}),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }
}
