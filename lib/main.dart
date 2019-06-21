import 'package:flutter/material.dart';
import 'package:redux_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String title = "Me Suite";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: HomePage(title),
    );
  }
}