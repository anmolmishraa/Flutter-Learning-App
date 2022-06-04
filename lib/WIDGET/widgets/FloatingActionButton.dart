import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class FloatingActionButtonwidget extends StatefulWidget {
  const FloatingActionButtonwidget({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonwidgetState createState() => _FloatingActionButtonwidgetState();
}

class _FloatingActionButtonwidgetState extends State<FloatingActionButtonwidget> {
  List Flot=[
    {
      "heading": "Floating Action Button",
      "content": "A FAB performs the primary, or most common, action on a screen. It appears in front of all screen content, typically as a circular shape with an icon in its center.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Types",
      "content": "There are three types of FABS: \n1. Regular FABs, \n2. Mini FABs, \n3. Extended FABs",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1pLWZopyiEKRFDW3GWrtnP7AWlGp5Rdc6"
    },
    {
      "heading": " Regular FABs",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=10T0v_aV0uLKWEEBlKmpBYK96IhaE7dGd"
    },
    {
      "heading": " Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=133ghVndv_ak_xKegIyg_HniYAMFOMpJf"
    },
    {
      "heading": " Mini FABs",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1gspfSatI15V8fdnEX_2DMWhANLnhvBrw"
    },
    {
      "heading": " Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1MM1CKS0bqLdNv1TKwbTyu1rKJlsWMSkd"
    },
    {
      "heading": "Extended FABs",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1lqXn_jG51POgPOsWqsSoRpsHCOP4fjwx"
    },
    {
      "heading": " Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=12PitBDYWJXys60N4_dYQdD_uBErWLbTG"
    },
    {
      "heading": " Full Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1o-xleI6y7KhmIRxN5dABcmkP4p8bhgTe"
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
        child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Flot.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(Flot[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(Flot[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      Flot[index]["imageshow"]==true?
                      Image.network(Flot[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
