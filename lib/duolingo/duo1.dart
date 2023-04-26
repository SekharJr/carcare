
import 'package:architecture/duolingo/duo2.dart';
import 'package:flutter/material.dart';



class duoOne extends StatefulWidget {
  const duoOne({Key? key}) : super(key: key);

  @override
  State<duoOne> createState() => _duoOneState();
}

class _duoOneState extends State<duoOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                top: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/shutt (1).jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black,Colors.transparent]),
                ),
              ),
              Positioned(
                  bottom: 250,
                  left: 20,
                  child: Text(
                    "Setup What",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'regular'),
                  )),
              Positioned(
                  bottom: 180,
                  left: 20,

                  child: Text(
                    "You Daily todo!",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'regular'),
                  )),
              Positioned(
                bottom: 80,
                  left: 20,
                  right: 150,
                  child: GestureDetector(
                    child: Container(
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
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>duoTwo()));
                  }
                  ),
              )

            ],
          )),
    );
  }
}
