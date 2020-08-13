import 'package:Clock/clock_view.dart';
import 'package:flutter/material.dart';

class HomepagePage extends StatefulWidget {

  @override
  _HomepagePageState createState() => _HomepagePageState();
}

class _HomepagePageState extends State<HomepagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF2D2F41),
        child: ClockView(),
      )
    );
  }
}
