import 'package:flutter/material.dart';
import 'package:global_network/global_network.dart';
import 'package:radio/INTRO/intro.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      create: (BuildContext context) => ConnectivityService().connectionStatusController.stream,
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}

