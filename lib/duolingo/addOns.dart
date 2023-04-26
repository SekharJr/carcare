

import 'package:architecture/duolingo/duo2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Helper with ChangeNotifier {
  Widget cont1() {
    return Container(
      height: 70,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.yellow,
      ),
      child: Text(
        "Get Started",
        style: TextStyle(
          fontFamily: 'bold',
          fontSize: 20,
        ),
      ),
    );
  }

  Widget text1(String value, double size, var weight, var color, var font) {
    return Text(
      value,
      style: TextStyle(
          fontSize: size, fontWeight: weight, color: color, fontFamily: font),
    );
  }

  Widget cont2(
      {required Color color,
      required String label,
      double width = 200,
      double height = 100}) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget cont3(
      {required Color color,
      required String label,
      double width = 100,
      double height = 100}) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
  Widget cont4(
      {required Color color,
        required String label,
        double width = 400,
        double height = 100}) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }


}
