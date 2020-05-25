import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final int age;
  final String hobby1;
  final String hobby2;
  final String hobby3;
  CardItem({
    this.imagePath,
    this.name,
    this.age,
    this.hobby1,
    this.hobby2,
    this.hobby3,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 400,
          width: 300,
          child: Card(
            elevation: 30.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            margin: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            Text(
              name,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              age.toString(),
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              '$hobby1 ,',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
            Text(
              ' $hobby2 ,',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
            Text(
              '$hobby3',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
