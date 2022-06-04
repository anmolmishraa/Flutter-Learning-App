import 'dart:async';

import 'package:flutter/material.dart';


import 'Database/hive.dart';
import 'Database/mysql.dart';
import 'Database/objectbox.dart';
import 'Package/pakage_home.dart';
import 'Rest_Api/deleteapi.dart';
import 'Rest_Api/getapi.dart';
import 'Rest_Api/postapi.dart';
import 'Rest_Api/updateapi.dart';

import 'firbase/firbasehome.dart';
import 'home.dart';



void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.black.withBlue(400),


      ),
      home: const Splash()
    );
  }
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
            Home()
        )
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: FlutterLogo(size: MediaQuery.of(context).size.width*.5,),),


    );
  }
}


