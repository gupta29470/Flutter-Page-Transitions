import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'rotate_screen.dart';

class SizeScreen extends StatelessWidget {
  const SizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Size Screen"),
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
                type: PageTransitionType.rotate,
                duration: Duration(seconds: 1),
                alignment: Alignment.bottomLeft,
                child: RotateScreen(),
              ),
            );
          },
          color: Colors.cyan,
          child: Text(
            "Rotate Page Transition",
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
