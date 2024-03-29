import 'package:flutter/material.dart';

class WelcomeSlide extends StatelessWidget {
  String image;
  String title;
  String subtitle;

  WelcomeSlide({required this.image,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 1.0,
            height: 300,
          ),
          SizedBox(height: 4),
          Center(
            child:Text(
              "$title",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child:Text("$subtitle"),
          ),
        ],
      ),
    );
  }
}
