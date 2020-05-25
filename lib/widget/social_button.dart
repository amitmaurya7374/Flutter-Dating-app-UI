import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SocialButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color colorBackground;
  SocialButton({this.title, this.iconData, this.colorBackground});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: colorBackground,
      onPressed: () {
        //implement the functionally
      },
      child: Row(
        children: <Widget>[
          IconButton(
            icon: FaIcon(
              iconData,
              color: Colors.white,
              size: 20,
              // semanticLabel: 'Facebook',
            ),
            onPressed: () {},
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
