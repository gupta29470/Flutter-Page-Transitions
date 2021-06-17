import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'right_to_left_fade_screen.dart';

class LeftToRightFadeScreen extends StatelessWidget {
  const LeftToRightFadeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Left To Right Fade Screen"),
      ),
      body: Center(
        child: MaterialButton(
          height: 40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                duration: Duration(seconds: 1),
                child: RightToLeftFadeScreen(),
              ),
            );
          },
          color: Colors.pink,
          child: Text(
            "Right to left Fade Page Transition",
            style: TextStyle(
              color: Colors.white,
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
