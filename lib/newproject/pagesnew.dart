import 'package:architecture/newproject/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              bottom: 200,
              left: 0,
              top: 400,
              child: Container(
                height: MediaQuery.of(context).size.height * .4,
                width: 200,
                color: Colors.black,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("My Profile",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,fontFamily: 'bold')),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                      ),
                    ],
                  ),

                  text1("Name", 20, FontWeight.bold, Colors.white,"bold"),
                  text1("occupation", 16, FontWeight.bold, Colors.yellow,'regular'),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          text1("Folders", 20, FontWeight.bold, Colors.white,'regular'),
                          SizedBox(
                            height: 20,
                          ),
                          text1("67", 20, FontWeight.bold, Colors.yellow,'regular'),
                        ],
                      ),
                      Column(
                        children: [
                          text1("Item", 20, FontWeight.bold, Colors.white,'regular'),
                          SizedBox(
                            height: 20,
                          ),
                          text1("986", 20, FontWeight.bold, Colors.yellow,'regular'),
                        ],
                      ),
                      Column(
                        children: [
                          text1("Used", 20, FontWeight.bold, Colors.white,'regular'),
                          SizedBox(
                            height: 20,
                          ),
                          text1("10 GB", 20, FontWeight.bold, Colors.yellow,'regular'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .4,
                padding: EdgeInsets.only(left: 24, bottom: 8, top: 60),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text1("My Folders", 24, FontWeight.bold, Colors.black,'bold'),
                      ],
                    ),
                    Container(
                        height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        margin: EdgeInsets.all(4),
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      elevation: 4,
                                      child: Container(
                                        height: 100,
                                        width: 200,
                                        padding: EdgeInsets.all(10),

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),

                                        child: Text("click",style: TextStyle(fontSize: 30,color: Colors.black),),
                                      ),
                                    ),
                                    onTap:() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdPage()));
                                    }
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              );
                            })),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text1("Last files", 24, FontWeight.bold, Colors.black,'bold'),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 400,
                      margin: EdgeInsets.only(right: 30, left: 10, top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Text text1(String value, double size, var weight, var color,var font) {
  return Text(
    value,
    style: TextStyle(fontSize: size, fontWeight: weight, color: color,fontFamily: font),
  );
}

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 130,
              child: Container(
                height: MediaQuery.of(context).size.height * .4,
                width: 100,
                color: Colors.black,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text1("Random text", 28, FontWeight.bold, Colors.white,'bold'),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text1("Home-My Storage-designs", 12, FontWeight.bold,
                          Colors.white,'regular')
                    ],
                  )
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .724,
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    )),
                child: Container(
                    height: MediaQuery.of(context).size.height * .75,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  elevation: 4,
                                  child: Container(
                                    height: 120,
                                    width: 400,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Text("click",style: TextStyle(fontSize: 30,color: Colors.black),),
                                  ),
                                ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>firstpage()));
                              },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 230,
              child: Container(
                height: MediaQuery.of(context).size.height * .4,
                width: 100,
                color: Colors.black,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .274,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          text1("Florence Katy", 20, FontWeight.bold,
                              Colors.white,'bold'),
                          SizedBox(
                            height: 10,
                          ),
                          text1("Team Leader", 16, FontWeight.w400,
                              Colors.yellow,'regular'),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        height: 40,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow,
                        ),
                        child: text1("Pro", 16, FontWeight.bold, Colors.black,'bold'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 4,
                    child: Container(
                      height: 100,
                      width: 400,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .6,
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    )),
                child: Container(
                    height: MediaQuery.of(context).size.height * .75,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                elevation: 4,
                                child: Container(
                                  height: 120,
                                  width: 400,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
