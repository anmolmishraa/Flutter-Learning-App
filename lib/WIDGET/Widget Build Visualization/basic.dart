import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Basic extends StatefulWidget {
  const Basic({Key? key}) : super(key: key);

  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  List basic=[
    {
      "heading": "Platform independent / basic widgets",
      "content": "Flutter provides large number of basic widgets to create simple as well as complex user interface in a platform independent manner. Let us see some of the basic widgets in this chapter."
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: basic.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(child: Text(basic[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),


                          Container(child: Text(basic[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),


                        ],
                      ),
                    );}),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.7,
                  child: Row(

                    children: [
                      Icon(Icons.check_box_outline_blank,),
                      Text("Text",style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.7,
                  child: Row(

                    children: [
                      Icon(Icons.check_box_outline_blank,),
                      Text("Image",style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios,)
              ],
            ),

// Image.network("https://drive.google.com/uc?export=view&id=11I74BTkpiwAKJGpIMBf8F3HzJeNKE70N")


          ],
        ),
      ),

    );
  }
}
