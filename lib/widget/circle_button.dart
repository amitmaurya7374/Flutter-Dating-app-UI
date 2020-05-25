import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  CircleButton({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.red,
            size: 28,
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
