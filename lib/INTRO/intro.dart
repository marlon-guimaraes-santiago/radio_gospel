import 'package:flutter/material.dart';
import 'package:radio/screen/HomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class IntroScreen extends StatelessWidget {

  static const routeName = '/intro';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          SplashScreen(
            useLoader: false,
            seconds: 8,
            backgroundColor: Colors.transparent,
           navigateAfterSeconds: HomeScreen() ,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/gif/source.gif',height: 200, width: 200,fit: BoxFit.cover, )),
              Text('GospelDart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)
            ],
          ),
        ],
      ),
    );
  }
}
