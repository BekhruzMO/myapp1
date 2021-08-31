import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {

  static final String id = 'page2';
  //const Page2({Key? key}) : super(key: key);
  final String? str;
  Page2({this.str});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        title: Text('Page 2'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
          child: Text(widget.str??'Null ekan', style: TextStyle(color: Colors.white,fontSize: 32)),
        ),
      ),
    );
  }
}
