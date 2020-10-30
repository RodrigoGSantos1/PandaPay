import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Inicial.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 120, 30, 100),
            child: Image.asset(
              "images/logo.png",
            ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3 )).then((_){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home() )
      );
    });
  }
}
