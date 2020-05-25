import 'package:dating_app/screen/mainpage_screen.dart';
import 'package:dating_app/widget/action_button.dart';
import 'package:dating_app/widget/social_button.dart';
import 'package:dating_app/widget/social_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  final Color color = Color(0xff8975CE);
  final SizedBox spaceHeight = SizedBox(
    height: 15.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 10.0),
                  child: Text(
                    'Login Now',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: color),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              Text(
                'Please login to continue using our app',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Image.asset(
                'assets/images/cop.png',
                fit: BoxFit.contain,
              ),
              spaceHeight,

              Card(
                elevation: 6.0,
                margin: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      // alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                        child: Text(
                          'Enter via social networks',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    spaceHeight,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SocialButton(
                            title: 'Facebook',
                            iconData: FontAwesomeIcons.facebookF,
                            colorBackground: Color(0xff3B5A9A),
                          ),
                          SocialButton(
                            title: 'Google',
                            iconData: FontAwesomeIcons.google,
                            colorBackground: Color(0xffDC4E42),
                          ),
                        ],
                      ),
                    ),
                    spaceHeight,
                    Text(
                      'or login with email ',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    spaceHeight,
                    SocialTextField(
                      hintText: 'Email',
                      secure: false,
                    ),
                    spaceHeight,
                    SocialTextField(
                      hintText: 'password',
                      secure: true,
                    ),
                    spaceHeight,
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Radio(
                            onChanged: (value) {
                              print(value);
                            },
                            value: 1,
                            groupValue: 1,
                            activeColor: Colors.pink,
                          ),
                        ),
                        Text(
                          'Remember me ',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35.0,
                        ),
                        Text(
                          'Forget password ?',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              ActionButtion(
                'Login',
                () {
                  Navigator.of(context).pushNamed(MainPage.routeName);
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Text(
                        'Don\'t have an account ?',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    ' Sign Up',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.pink,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
