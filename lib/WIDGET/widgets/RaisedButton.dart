import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class RaisedButtonWidget extends StatefulWidget {
  const RaisedButtonWidget({Key? key}) : super(key: key);

  @override
  _RaisedButtonWidgetState createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {
  List raised=[
    {
      "heading": "Raised Button ",
      "content": "RaisedButton is the material design button based on a Material widget that elevates when pressed upon in flutter. It is one of the most widely used buttons in the flutter library. Let’s understand this button with the help of an example.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "List of replaced classes:",
      "content": "FlatButton → TextButton\nRaisedButton → ElecatedButton\nOutlineButton → OutlinedButton\nButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Constructors:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1gY1g_ZO0I7Xph8qXLOVSBU2doJR7aiyQ"
    },
    {
      "heading": "Implementation:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1ijm4NZh8dZrOVczdAtCkDrTD4E_fApN0"
    },
    {
      "heading": "Output:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=10yRLN7x8VumOFRV2nhaFT40rc8k50F_y"
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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: raised.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(raised[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(raised[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
raised[index]["imageshow"]==true?
                      Image.network(raised[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
