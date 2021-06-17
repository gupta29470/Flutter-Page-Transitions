import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'fade_screen.dart';

class NoUseScreen extends StatefulWidget {
  NoUseScreen({Key? key}) : super(key: key);

  @override
  _NoUseScreenState createState() => _NoUseScreenState();
}

class _NoUseScreenState extends State<NoUseScreen> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Page",
                style: TextStyle(
                  color: Colors.blue,
                  wordSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Text(
                "Transitions",
                style: TextStyle(
                  color: Colors.blue,
                  wordSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              SizedBox(height: height * 0.1),
              MaterialButton(
                height: height * 0.06,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: FadeScreen(),
                    ),
                  );
                },
                color: Colors.blue,
                child: Text(
                  "Fade Page Transition",
                  style: TextStyle(
                    color: Colors.white,
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
