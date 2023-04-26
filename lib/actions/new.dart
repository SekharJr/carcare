
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Providerarc extends StatelessWidget {
  const Providerarc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<Cars>(builder: (context,value,child){

                 return Text(value.name);
                          }
                )
              ],
            ),
            GestureDetector(child: Container(
              height: 50,
              width: 100,
              color: Colors.green,
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Text("Click Here"),
            ),
              onTap: (){
                Provider.of<Cars>(context, listen: false).Changeonclick();
              },

            )
          ],
        ),
      ),
    );
  }


}


class Cars with ChangeNotifier{
  String name="Toyota";

  void Changeonclick(){
     name="KIA";

     notifyListeners();

  }

}