import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({Key? key}) : super(key: key);

  @override
  _ImagepickerState createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  List image=[
    {
      "heading": "Adding an Image Picker",
      "content": "Image Picker is a common component we often need for user-profiles and other stuff. We will be using this plugin by Flutter developers.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Add the dependency",
      "content": "Image Picker is a common component we often need for user-profiles and other stuff. We will be using this plugin by Flutter developers.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1TzLfmNeYvUgCKEJRTlbgJBjGjC2Szii1"
    },
    {
      "heading": "Configure native platforms",
      "content": "Next, we need to configure native settings. For the Android platform, nothing is needed. For iOS, open Info.plist file found under ios/Runner folder and add the following keys.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Dzd4JCruHNOBI0qUuaoUUAD4ISPyA7Kt"
    },

    {
      "heading": " Image Picker function",
      "content": "In our screen’s StatefulWidget’s State class, declare a File variable to hold the image picked by the user.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1fz3086i2cPuecmDmDwUFqd1ikuU5G85M"
    },
    {
      "heading": "Create an option chooser for selecting camera / gallery",
      "content": "Next, write a function for displaying a bottom sheet for the user for choosing the option of camera or gallery.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=17ybUIXEzOOwvYGEf2H_AseRnSYXB4rK7"
    },
    {
      "heading": "Create and configure the Image view on screen",
      "content": "Finally, let us create a profile picture holder on the screen, which opens the chooser upon click, and displays the selected image.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Qkh3vJgDYOJ-Z8r_RVxrWKryoHavyN-Y"
    },
    {
      "heading": "",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1rlku5olPS02WC3gGuN_7yEBRDDGj6Goq"
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
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(image[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(image[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      image[index]["imageshow"]==true?
                      Image.network(image[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
