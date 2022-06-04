import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class Velocity_xHome extends StatefulWidget {
  const Velocity_xHome({Key? key}) : super(key: key);

  @override
  _Velocity_xHomeState createState() => _Velocity_xHomeState();
}

class _Velocity_xHomeState extends State<Velocity_xHome> {
  List velocity=[
    {
      "heading": "What is Flutter Velocity X?",
      "content": "The Velocity X  library in flutter development is a minimalist flutter framework that helps you in building custom Application design Rapidly.\n\nVelocity X comes with various properties that we can apply to our flutter widget such as Color, Padding, Text , Box, Card, SizedBox and many more.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Installation of Velocity X in Flutter Project",
      "content": "",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Adding Dependencies",
      "content": "Add the following dependencies in your pubspec.yaml file.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1EmJzX0cgzvBaTMwuCa5dJTORFdQ5lJi-"
    },
    {
      "heading": " Importing the VelocityX package",
      "content": "Once you have added the velocityx dependencies, Now you can use them in your dart code (main.dart), just by importing the package / component that are required for application development.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=153Xdr6WKYOIhnV6eanmpz3ynb6OTTu1i"
    },
    {
      "heading": "How to use Velocity X in Text Widget.",
      "content": "This Library gives super power to Text\n\nNote : When are are done with applying velocityx properties to widget or string end it with .make() to make it back to flutter widget.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1C_WRMjr0aLhO8Xe2ylSxYCEkBaBXBtcW"
    },
    {
      "heading": "Padding to the VelocityX card",
      "content": "This will set a Padding to the card with padding size of 16 px vertically.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1AfDU5Vm13lSARyub4eD-bALckbkS63SA"
    },
    {
      "heading": "Velocity x Card",
      "content": "You can use card properties on any of the flutter widgets & wrap it to a card widget.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1OHpMR99z5hAfpYkp9e0ztY5zRW5IU-dn"
    },
    {
      "heading": "Setting Color using Hex Code",
      "content": "you can even set the card color using Hex Color Code properties.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1wve-6_fDGaxKyWNoNdZ4QImyeXLDcsQB"
    }


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(CupertinoIcons.backward,color: MyColor.TheamColor,)),
        title: Shimmer.fromColors(
          baseColor:MyColor.TheamColor,
          highlightColor: Color(0XFF91a0b8),
          child: Text(
            'Velocity_X',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),

          ),
        ),
        centerTitle: true,
        actions: [
          Shimmer.fromColors(
            baseColor:MyColor.TheamColor,
            highlightColor: Color(0XFF91a0b8),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(onTap: (){

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Installation()),
                // );
              },child: Icon(CupertinoIcons.forward)),
            ),
          ),

        ],

      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: velocity.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(velocity[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(velocity[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      velocity[index]["imageshow"]==true?
                      Image.network(velocity[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
