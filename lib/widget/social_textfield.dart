import 'package:flutter/material.dart';
class SocialTextField extends StatelessWidget {
  final String hintText;
  final bool secure;
  SocialTextField({this.hintText,this.secure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        obscureText: secure,
        decoration: InputDecoration(
          // fillColor: Colors.pink,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.green),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
