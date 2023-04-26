

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collections with ChangeNotifier{


  Widget perclist(  String? perc, String? efficiencyciencyage,
  String? disctription ){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

      child: Container(
        height:100 ,
        width: 150,
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),color: Colors.yellow,
        ),
      ),
    );
  }

}