import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class DeleteApi extends StatefulWidget {
  const DeleteApi({Key? key}) : super(key: key);

  @override
  _DeleteApiState createState() => _DeleteApiState();
}

class _DeleteApiState extends State<DeleteApi> {
  List Dele=[
    {
      "heading": "Delete Api",
      "content": " This recipe covers how to delete data over the internet using the http package.\n\nThis recipe uses the following steps:\n1.Add the http package.\n2.Delete data on the server.\n3.Update the screen.",
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
      "heading": "Delete data on the server",
      "content": "This recipe covers how to delete an album from the JSONPlaceholder using the http.delete() method. Note that this requires the id of the album that you want to delete. For this example, use something you already know, for example id = 1.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1IbYmZDLixSuYVuc8-6_u_e72B_qKIUXj"
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
              itemCount: Dele.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(Dele[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(Dele[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      Dele[index]["imageshow"]==true?
                      Image.network(Dele[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
