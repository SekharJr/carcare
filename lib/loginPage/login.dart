import 'package:architecture/test_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int? _output;
  late TestCubit objcubitlogin;
  @override
  void initState() {
    // TODO: implement initState
    objcubitlogin=TestCubit();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context)=>objcubitlogin,
          child: BlocListener<TestCubit,TestState>(
            listener: (context,state){
              if(state is Testloading){
                print("Login loading");
              }else if(state is TestSuccess){
                _output=state.output;
              }else if(state is TestError){
                print("Error");
              }
            },
            child: BlocBuilder<TestCubit,TestState>(
              builder: (context,state){
                if(state is Testloading){
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(),
                    ),
                  );
                }else if(state is TestSuccess){
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Text(_output.toString(),style: TextStyle(fontSize: 34),),
                  );
                } else if(state is TestError){
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Text("Error",style: TextStyle(fontSize: 34),),
                  );
                }
                else {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: (){
                      objcubitlogin.loadData();
                      },
                      child: Container(
                        height: 60,
                        width: 200,
                        color: Colors.blueAccent,
                        child: Text("login"),
                      ),
                    ),
                  );
                }
              },
            ),
          ),


      ),
    );
  }
}
