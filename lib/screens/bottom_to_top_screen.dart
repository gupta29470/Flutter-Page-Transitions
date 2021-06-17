import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'scale_screen.dart';

class BottomToTopScreen extends StatelessWidget {
  const BottomToTopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Bottom To Top Screen"),
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
                type: PageTransitionType.scale,
                duration: Duration(seconds: 1),
                alignment: Alignment.bottomCenter,
                child: ScaleScreen(),
              ),
            );
          },
          color: Colors.orange,
          child: Text(
            "Scale Page Transition",
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
