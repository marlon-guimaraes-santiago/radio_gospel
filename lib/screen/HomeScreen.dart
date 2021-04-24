import 'package:flutter/material.dart';
import 'package:global_network/global_network.dart';
import 'package:radio/screen/radios/musicGospel.dart';
import 'package:radio/screen/radios/musicGospel2.dart';
import 'package:radio/screen/radios/musicGospel3.dart';
import 'package:radio/screen/radios/musicGospel4.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalNetwork(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('GOSPEL DART'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
                color: Colors.transparent,
                height: 100,
                child: RadioMusic()),
            Container(
                alignment: Alignment.centerRight,
                color: Colors.transparent,
                height: 40,
                child: RadioMusic2()),
            Container(
                alignment: Alignment.centerRight,
                color: Colors.transparent,
                height: 100,
                child: RadioMusic3()),
            Container(
              height: 100,
                child: Image.asset('assets/images/gif/menino.gif',fit: BoxFit.cover,)),
            Container(
                alignment: Alignment.centerRight,
                color: Colors.transparent,
                height: 100,
                child: RadioMusic4()),
            SizedBox(height: 80,),
            Container(
                height: 100,
                child: Image.asset('assets/images/gif/bott.gif',fit: BoxFit.cover,)),
          ],
        ),
      ),
    );
  }
}
