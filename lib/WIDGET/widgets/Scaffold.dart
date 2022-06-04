import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Scaffoldwidget extends StatefulWidget {
  const Scaffoldwidget({Key? key}) : super(key: key);

  @override
  _ScaffoldwidgetState createState() => _ScaffoldwidgetState();
}

class _ScaffoldwidgetState extends State<Scaffoldwidget> {

  List scaff=[ {
    "heading": "Scaffold",
    "content": "The Scaffold is a widget in Flutter used to implements the basic material design visual layout structure. It is quick enough to create a general-purpose mobile application and contains almost everything we need to create a functional and responsive Flutter apps. This widget is able to occupy the whole device screen. In other words, we can say that it is mainly responsible for creating a base to the app screen on which the child widgets hold on and render on the screen. It provides many widgets or APIs for showing Drawer, SnackBar, BottomNavigationBar, AppBar, FloatingActionButton, and many more.\nThe Scaffold class is a shortcut to set up the look and design of our app that allows us not to build the individual visual elements manually. It saves our time to write more code for the look and feel of the app. The following are the constructor and properties of the Scaffold widget class.",
  "image":"https://drive.google.com/uc?export=view&id=1fvJL2_d3esyuGUsELiW-q4OoOOeynQFd",
  }];
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
            'Widgets',
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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: scaff.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(scaff[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

SizedBox(height: 15,),



                      Container(child: Text(scaff[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),

        Image.network(scaff[index]["image"])

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
