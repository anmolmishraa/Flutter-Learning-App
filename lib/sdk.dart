import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class SDK extends StatefulWidget {
  const SDK({Key? key}) : super(key: key);

  @override
  _SDKState createState() => _SDKState();
}

class _SDKState extends State<SDK> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              'Sdk ',
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
                )
            ),

          ],

        ),
      body: Container(
        child: Column(
          children: [
          Text("Flutter SDK releases",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text("Stable channel (Windows)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),


        ],),

      ),



    );
  }
}
