import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'left_to_right_fade_screen.dart';

class RotateScreen extends StatelessWidget {
  const RotateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Rotate Screen"),
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
                type: PageTransitionType.leftToRightWithFade,
                duration: Duration(seconds: 1),
                child: LeftToRightFadeScreen(),
              ),
            );
          },
          color: Colors.brown,
          child: Text(
            "left to Right Fade Page Transition",
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
