import 'package:dating_app/widget/action_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class StartingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDFE),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.all(20),
              child: Text(
                'Skip',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 16.0,
                    color: Colors.pink,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/cop.png',
                height: 300,
                width: 280,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'DISCOVER',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff8975CE),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  '''      Lorem Ipsum is simply dummy text of
      the printing and typesetting industry.
      Lorem Ipsum has been the industry's
                   ''',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(radius: 5, backgroundColor: Colors.pink),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                    radius: 5, backgroundColor: Colors.pinkAccent[100]),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(radius: 5, backgroundColor: Colors.pink[100]),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(radius: 5, backgroundColor: Colors.pink[100]),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            ActionButtion(
              'Get started',
              () {
                //impliment functionality
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account ?',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.grey[600],
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Text(
                  'Login',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.pink,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}
