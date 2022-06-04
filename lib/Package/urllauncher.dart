import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class UrlLauncher extends StatefulWidget {
  const UrlLauncher({Key? key}) : super(key: key);

  @override
  _UrlLauncherState createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  List url=[

    {
    "heading": "url_launcher flutter package",
    "content": "Flutter url_launcher is a plugin for your flutter project, if you want to add feature in your app such as making a phone call, send a SMS, Email, opening a website(url launch) by taking input from your flutter app users.",
    "imageshow": false,
    "image": ""
  },
    {
      "heading": "Make a call: ",
      "content": "Your app user can simply select a phone number from a list in app and make a direct call in flutter.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Send Email: ",
      "content": "User can select to whom to send email & enter text in subject & email body and send it.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Open URL from flutter app:",
      "content": " Suppose your app display list of website address then user can simply select which website he want to visit and open the website.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Installation of url_launcher",
      "content": "In flutter project open pubspec.yaml file & under dependencies section add url launcher package.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1ikhKajA26e0fzDSInSyWcVfwISDMnNDn"
    },
    {
      "heading": "Complete Code ",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1d8bepk2Ecu5l891Bh9__VOufx0SroEnn"
    }



  ];
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
            'Package',
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
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: url.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(url[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(url[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      url[index]["imageshow"]==true?
                      Image.network(url[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
