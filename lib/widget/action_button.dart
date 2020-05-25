import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ActionButtion extends StatelessWidget {
 final String buttonTitle;
 final Function  onpress;
 ActionButtion(this.buttonTitle,this.onpress);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 6.0,
      color: Color(0xff8975CE),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)),
      onPressed: onpress,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 15.0, horizontal: 70),
        child: Text(
          buttonTitle,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
