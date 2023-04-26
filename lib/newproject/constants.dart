
import 'package:flutter/material.dart';
class addOns with ChangeNotifier{
  Widget card2(){
    return  Card(
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

  Widget appbar(){
    return AppBar(
      backgroundColor: Colors.black,
      leading: BackButton(
        color: Colors.white,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.align_horizontal_right_rounded,
              color: Colors.white,
            ))
      ],
    );
  }

}