import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  final String imagePath;
  CircleProfile({
    this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar(
            radius: 40,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
