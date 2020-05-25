import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonListItem extends StatelessWidget {
  final String name;
  final String hobby;
  final String imagePath;
  PersonListItem({
    this.name,
    this.imagePath,
    this.hobby,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            name,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 20.0,
              ),
            ),
          ),
          subtitle: Text(
            hobby,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                fontSize: 16.0,
              ),
            ),
          ),
          leading: CircleAvatar(
            radius: 30,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                // border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          trailing: Icon(
            Icons.message,
            color: Colors.white,
            size: 27,
          ),
        ),
      ),
    );
  }
}
