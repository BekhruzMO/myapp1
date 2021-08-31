import 'package:flutter/material.dart';
import 'package:myapp1/home_page.dart';
import 'package:myapp1/page2.dart';

void main() {
  runApp(MyApp());
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
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        Page2.id:(context) => Page2()
      },
    );
  }
}

