import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'size_screen.dart';
class ScaleScreen extends StatelessWidget {
  const ScaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Scale Screen"),
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
                type: PageTransitionType.size,
                alignment: Alignment.bottomCenter,
                duration: Duration(seconds: 1),
                child: SizeScreen(),
              ),
            );
          },
          color: Colors.purple,
          child: Text(
            "Size Page Transition",
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
