import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());
void loadData(){
  emit(Testloading());
  try{
   Future<sample>sampleCall() async{
     sample? objsample;
     var resp= await http.get(Uri.parse("https://mocki.io/v1/41d7784b-6938-49c2-9999-88c0f70df252"));
     if(resp.statusCode==200){
       var body=jsonDecode(resp.body);
       objsample=sample.fromJson(body);
     }else{
       print("error");
     }
     return objsample!;
   }


   emit(TestSuccess(sampleCall() as int));
  }catch(g){
    emit(TestError());
    print('error');
  }
}


}

class sample {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  sample({this.id, this.name, this.email, this.gender, this.status});

  sample.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['status'] = this.status;
    return data;
  }
}