import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'no_use_screen.dart';

class RightToLeftFadeScreen extends StatelessWidget {
  const RightToLeftFadeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Right To Left Fade Screen"),
      ),
    );
  }
}
