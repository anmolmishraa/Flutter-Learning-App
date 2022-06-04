import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class UpdateApi extends StatefulWidget {
  const UpdateApi({Key? key}) : super(key: key);

  @override
  _UpdateApiState createState() => _UpdateApiState();
}

class _UpdateApiState extends State<UpdateApi> {
  List update=[
    {
      "heading": "Update Api",
      "content":"Updating data over the internet is necessary for most apps. The http package has got that covered!\nThis recipe uses the following steps:\n1.Add the http package.\n2.Update data over the internet using the http package.\n3.Convert the response into a custom Dart object.\n4.Get the data from the internet.\5.Update the existing title from user input.\n6.Update and display the response on screen",
       "imageshow": false,
      "image": ""
    },{
      "heading": "Add the http package",
      "content": "The http package provides the simplest way to fetch data from the internet.\nTo install the http package, add it to the dependencies section of the pubspec.yaml file. You can find the latest version of the http package the pub.dev.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "dependencies:\n  http: <latest_version>\nimport 'package:http/http.dart' as http;\n<uses-permission android:name=\"android.permission.INTERNET\"/>",
      "content": "",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Updating data on the server",
      "content": "This recipe covers how to update an album title to the JSONPlaceholder using the http.put() method.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Yvjn-KqcIrq-dnOPX87tTxBfr8TLenxH"
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
            'Rest Api',
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
              itemCount: update.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(update[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(update[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      update[index]["imageshow"]==true?
                      Image.network(update[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
