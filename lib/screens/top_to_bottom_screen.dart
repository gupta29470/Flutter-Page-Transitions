import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screens/bottom_to_top_screen.dart';

class TopToBottomScreen extends StatelessWidget {
  const TopToBottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Top To Bottom Screen"),
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
                type: PageTransitionType.bottomToTop,
                duration: Duration(seconds: 1),
                child: BottomToTopScreen(),
              ),
            );
          },
          color: Colors.indigo,
          child: Text(
            "Bottom To Top Page Transition",
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
