import 'package:flutter/material.dart';
import 'package:navi_mobdev/colorSetting.dart';
import 'package:navi_mobdev/shades_page.dart';
import 'package:navi_mobdev/shades_with_param.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/shades': (context) => ShadesWithParams(),
        '/colorPage': (context) => colorSetting()
      },
    );
  }
}
