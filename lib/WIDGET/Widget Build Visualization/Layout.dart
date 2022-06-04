import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class LayoutWidgets extends StatefulWidget {
  const LayoutWidgets({Key? key}) : super(key: key);

  @override
  _LayoutWidgetsState createState() => _LayoutWidgetsState();
}

class _LayoutWidgetsState extends State<LayoutWidgets> {
  List Layout=[
    {
      "show":"",
      "heading": "Layout widgets",
      "content": "In Flutter, a widget can be created by composing one or more widgets. To compose multiple widgets into a single widget, Flutter provides large number of widgets with layout feature. For example, the child widget can be centered using Center widget.\nSome of the popular layout widgets are as follows"
    }

  ];
  List  follows=[
    {
      "heading": "Container",
      "content": " A rectangular box decorated using BoxDecoration widgets with background, border and shadow."
    },
    {
      "heading": "Center",
      "content": "Center its child widget."
    },
    {
      "heading": "Row",
      "content": " Arrange its children in the horizontal direction."
    },
    {
      "heading": "Column ",
      "content": " Arrange its children in the vertical direction."
    },
    {
      "heading": "Stack",
      "content": "Arrange one above the another."
    },
    {
      "heading": "",
      "content": "We will check the layout widgets in detail in the upcoming Introduction to layout widgets chapter."
    },


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
        child: SingleChildScrollView(
          child: Column(
            children: [
            Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: Layout.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(child: Text(Layout[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),


                        Container(child: Text(Layout[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),


                      ],
                    ),
                  );}),

          ),
              Container(
                height: MediaQuery.of(context).size.height-250,
                child: ListView.builder(
                  shrinkWrap: true,

                    scrollDirection: Axis.vertical,
                    itemCount: follows.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Wrap(
                          textDirection: TextDirection.ltr,
                          runSpacing: 5,
                          spacing: 10,
                          children: [
                            Container(child: Text(follows[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),
                            Container(child: Text(follows[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                          ],
                        ),
                      );}),

              ),
            ],
          ),
        ),
      ),

    );
  }
}
