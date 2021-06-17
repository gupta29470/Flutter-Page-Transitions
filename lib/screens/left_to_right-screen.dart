import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'right_to left_screen.dart';

class LeftToRightScreen extends StatelessWidget {
  const LeftToRightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Left To Right Screen"),
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
                type: PageTransitionType.rightToLeft,
                duration: Duration(seconds: 1),
                child: RightToLeftScreen(),
              ),
            );
          },
          color: Colors.yellow,
          child: Text(
            "Right to left Page Transition",
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
