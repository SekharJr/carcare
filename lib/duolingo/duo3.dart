import 'package:architecture/duolingo/addOns.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class duoThree extends StatefulWidget {
  const duoThree({Key? key}) : super(key: key);

  @override
  State<duoThree> createState() => _duoThreeState();
}

class _duoThreeState extends State<duoThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,

        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 0,
                child: Image.asset("assets/images/istock (1).jpg",
                fit: BoxFit.cover,
                ),

            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue.shade900.withOpacity(0.7),
              padding: EdgeInsets.all(30),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Provider.of<Helper>(context).text1('duolingo', 50, FontWeight.bold, Colors.white, 'duob')

                  ],
                ),
                Text(
                  "Learn Lanuages from Content You love",
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
