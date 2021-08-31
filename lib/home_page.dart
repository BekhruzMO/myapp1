import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/page2.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Future getPage2Info() async{
  Navigator.of(context).push(
    new MaterialPageRoute(builder: (BuildContext context){
      return new Page2(str:'Salom str');

    })
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)) ,
          onPressed: (){
            getPage2Info();
            ///Navigator.pushReplacementNamed(context, Page2.id);
          },
          child: Text('111', style: TextStyle(color: Colors.white, fontSize: 32),),

        ),
      ),
    );
  }
}
