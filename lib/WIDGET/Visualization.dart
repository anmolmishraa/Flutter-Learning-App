import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';

import 'Widget Build Visualization/Layout.dart';
import 'Widget Build Visualization/Platformspecific.dart';
import 'Widget Build Visualization/Statemaintenance.dart';
import 'Widget Build Visualization/basic.dart';
class Visualization extends StatefulWidget {
  const Visualization({Key? key}) : super(key: key);

  @override
  _VisualizationState createState() => _VisualizationState();
}

class _VisualizationState extends State<Visualization> {
  List visual=[
    {
      "sho":false,
      "heading": "Widget Build Visualization",
      "content": "In Flutter, widgets can be grouped into multiple categories based on their features, as listed below ",

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
            'Widget',
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
        padding: const EdgeInsets.only(right: 8,left: 8),
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: visual.length,
    itemBuilder: (BuildContext context, int index) {
    return Padding(
            padding: const EdgeInsets.only(top: 20,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(child: Text(visual[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),


                Container(child: Text(visual[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),



              ],
            ),
    );}),

            ),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlatformSpecific()),
              );
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Row(

                      children: [
                        Icon(Icons.check_box_outline_blank,),
                        Text("Platform specific widgets",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutWidgets()),
              );
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Row(

                      children: [
                        Icon(Icons.check_box_outline_blank,),
                        Text("Layout widgets",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StateMaintenance()),
              );
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Row(

                      children: [
                        Icon(Icons.check_box_outline_blank,),
                        Text("State maintenance widgets",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Basic()),
              );
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(

                    child: Row(

                      children: [
                        Icon(Icons.check_box_outline_blank,),
                        Text("Platform independent / basic widgets",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
