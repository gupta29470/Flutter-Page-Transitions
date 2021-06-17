import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'top_to_bottom_screen.dart';

class RightToLeftScreen extends StatelessWidget {
  const RightToLeftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Right To LeftScreen Screen"),
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
                type: PageTransitionType.topToBottom,
                duration: Duration(seconds: 1),
                child: TopToBottomScreen(),
              ),
            );
          },
          color: Colors.green,
          child: Text(
            "Top To Bottom Page Transition",
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
