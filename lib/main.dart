import 'package:flutter/material.dart';
import './net/netManager.dart';
import 'utils/sharedPreferences.dart';
import 'page/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDio();
  await SpUtil.getInstance();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}