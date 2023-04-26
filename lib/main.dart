// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:architecture/actions/new.dart';
import 'package:architecture/actions/profirst.dart';
import 'package:architecture/duolingo/addOns.dart';
import 'package:architecture/duolingo/duo1.dart';
import 'package:architecture/duolingo/duo2.dart';
import 'package:architecture/duolingo/duo3.dart';
import 'package:architecture/loginPage/login.dart';
import 'package:architecture/newproject/pagesnew.dart';
import 'package:architecture/providers/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    const MyApp(),
  );
}

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
// ignore: prefer_mixin
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Helper(),
      child: MaterialApp(
          home: duoOne(),
      ),
    );

  }
}





























