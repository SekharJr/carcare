import 'dart:convert';

import 'package:architecture/home/bottombar.dart';
import 'package:architecture/providers/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as Provider;
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class homepro extends StatefulWidget {
  const homepro({Key? key}) : super(key: key);

  @override
  State<homepro> createState() => _homeproState();
}

class _homeproState extends State<homepro> {
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const page5(),
  ];

  Data? data_obj;
  String? userName;
  String? image;
  String? date;
  List<ProgressData>? progressData;
  List<MeetingList>? meetingList;

  Future<private> abcd() async {
    private? objprivate;
    var display = await http.get(
        Uri.parse("https://mocki.io/v1/d1d589ab-f667-4820-bb5c-67e9045ef635"));
    if (display.statusCode == 200) {
      var body = jsonDecode(display.body);
      objprivate = private.fromJson(body);
    } else {
      print("error");
    }
    return objprivate!;
  }

  Future? futureobj;
  private? objprivate_outer;

  @override
  void initState() {
    // TODO: implement initState
    futureobj = abcd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Hello,villie',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: "medium",
              color: Colors.black),
        ),
        toolbarHeight: 100,
        actions: [
          CircleAvatar(
            radius: 40,
          ),
          SizedBox(width: 20),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            color: Colors.indigo.shade900,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.check_box_outline_blank_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.check_box_outline_blank_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            objprivate_outer = snapshot.data;
            data_obj = objprivate_outer!.data;
            userName = data_obj!.userName;
            image = data_obj!.image;
            date = data_obj!.date;
            progressData = data_obj!.progressData;
            meetingList = data_obj!.meetingList;

            return Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your progress",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                    itemCount: progressData!.length,
                                    itemBuilder: (context, index) {
                                      return Provider.Consumer<Collections>(
                                        builder: (context, Collections, _) =>
                                            Collections.perclist(
                                                progressData![index].efficiency,
                                                progressData![index]
                                                    .disctription,
                                                progressData![index]
                                                    .percentage
                                                    .toString()),
                                      );
                                    })),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // printing text on screen
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              DateFormat.MMMMEEEEd().format(DateTime.now()),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Icon(
                                Icons.calendar_month_sharp,
                                size: 30,
                                color: Colors.grey.shade900,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        child: ListView.builder(
                            itemCount: meetingList!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  text1(
                                      meetingList![index]
                                          .startingTime
                                          .toString(),
                                      14,
                                      FontWeight.bold,
                                      Colors.black),
                                  Container(
                                    height: 140,
                                    width: 320,
                                    padding: EdgeInsets.all(20),
                                    margin:
                                        EdgeInsets.only(bottom: 10, top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.red.shade100,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text1(
                                            meetingList![index]
                                                .content
                                                .toString(),
                                            16,
                                            FontWeight.bold,
                                            Colors.deepOrange.shade900),
                                        text1(
                                            meetingList![index]
                                                .projectName
                                                .toString(),
                                            14,
                                            FontWeight.w400,
                                            Colors.red),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            text1(
                                                meetingList![index]
                                                    .fromTo
                                                    .toString(),
                                                14,
                                                FontWeight.w400,
                                                Colors.red)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            );
          }
        },
        future: futureobj,
      ),
    );
  }
}

Text text1(String value, double size, var weight, var color) {
  return Text(
    value,
    style: TextStyle(fontSize: size, fontWeight: weight, color: color),
  );
}

class private {
  String? status;
  String? message;
  Data? data;

  private({this.status, this.message, this.data});

  private.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? userName;
  String? image;
  String? date;
  List<ProgressData>? progressData;
  List<MeetingList>? meetingList;

  Data(
      {this.userName,
      this.image,
      this.date,
      this.progressData,
      this.meetingList});

  Data.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    image = json['image'];
    date = json['date'];
    if (json['ProgressData'] != null) {
      progressData = <ProgressData>[];
      json['ProgressData'].forEach((v) {
        progressData!.add(new ProgressData.fromJson(v));
      });
    }
    if (json['meetingList'] != null) {
      meetingList = <MeetingList>[];
      json['meetingList'].forEach((v) {
        meetingList!.add(new MeetingList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this.userName;
    data['image'] = this.image;
    data['date'] = this.date;
    if (this.progressData != null) {
      data['ProgressData'] = this.progressData!.map((v) => v.toJson()).toList();
    }
    if (this.meetingList != null) {
      data['meetingList'] = this.meetingList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProgressData {
  int? percentage;
  String? efficiency;
  String? disctription;
  int? id;

  ProgressData({this.percentage, this.efficiency, this.disctription, this.id});

  ProgressData.fromJson(Map<String, dynamic> json) {
    percentage = json['percentage'];
    efficiency = json['efficiency'];
    disctription = json['Disctription'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['percentage'] = this.percentage;
    data['efficiency'] = this.efficiency;
    data['Disctription'] = this.disctription;
    data['id'] = this.id;
    return data;
  }
}

class MeetingList {
  int? meetingId;
  String? startingTime;
  String? content;
  String? projectName;
  String? projectId;
  String? fromTo;
  List<Members>? members;

  MeetingList(
      {this.meetingId,
      this.startingTime,
      this.content,
      this.projectName,
      this.projectId,
      this.fromTo,
      this.members});

  MeetingList.fromJson(Map<String, dynamic> json) {
    meetingId = json['meetingId'];
    startingTime = json['startingTime'];
    content = json['content'];
    projectName = json['project_name'];
    projectId = json['project_id'];
    fromTo = json['fromTo'];
    if (json['members'] != null) {
      members = <Members>[];
      json['members'].forEach((v) {
        members!.add(new Members.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meetingId'] = this.meetingId;
    data['startingTime'] = this.startingTime;
    data['content'] = this.content;
    data['project_name'] = this.projectName;
    data['project_id'] = this.projectId;
    data['fromTo'] = this.fromTo;
    if (this.members != null) {
      data['members'] = this.members!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Members {
  String? memberName;
  int? memberId;

  Members({this.memberName, this.memberId});

  Members.fromJson(Map<String, dynamic> json) {
    memberName = json['member_name'];
    memberId = json['memberId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['member_name'] = this.memberName;
    data['memberId'] = this.memberId;
    return data;
  }
}
