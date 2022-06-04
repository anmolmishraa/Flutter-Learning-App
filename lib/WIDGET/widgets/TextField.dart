import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  List Filed=[
    {
      "heading": "TextField",
      "content": " A TextField or TextBox is an input element which holds the alphanumeric data, such as name, password, address, etc. It is a GUI control element that enables the user to enter text information using a programmable code. It can be of a single-line text field (when only one line of information is required) or multiple-line text field (when more than one line of information is required).\\nTextField in Flutter is the most commonly used text input widget that allows users to collect inputs from the keyboard into an app. We can use the TextField widget in building forms, sending messages, creating search experiences, and many more. By default, Flutter decorated the TextField with an underline. We can also add several attributes with TextField, such as label, icon, inline hint text, and error text using an InputDecoration as the decoration. If we want to remove the decoration properties entirely, it is required to set the decoration to null.\n\n\nThe following code explains a demo example of TextFiled widget in Flutter",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1cY5jMCv6MDhYZmbtLG41EQ_PUzlYxzvF"
    },
    {
      "heading": "Validating",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1rDM5ZIwb5jiMOLr_vfH2stcOxrNeUefK"
    },
    {
      "heading": "Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1rDM5ZIwb5jiMOLr_vfH2stcOxrNeUefK"
    },
    {
      "heading": "",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1EfY12oOyq1XGq62CPL3YYv-jKZqKC52h"
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
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Filed.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(Filed[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(Filed[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      Filed[index]["imageshow"]==true?
                      Image.network(Filed[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),
    );
  }
}
