import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {

  List Intor=[
    {
      "heading": "Introduction to Widgets",
      "content": "As we learned in the earlier chapter, widgets are everything in Flutter framework. We have already learned how to create new widgets in previous chapters.\nIn this chapter, let us understand the actual concept behind creating the widgets and the different type of widgets available in Flutter framework.\nLet us check the Hello World application’s MyHomePage widget. The code for this purpose is as given below −",
      "image": "assets/intro.png"
    },
    {
      "heading": "",
      "content": "Here, we have created a new widget by extending StatelessWidget.\nNote that the StatelessWidget only requires a single method build to be implemented in its derived class. The build method gets the context environment necessary to build the widgets through BuildContext parameter and returns the widget it builds.\nIn the code, we have used title as one of the constructor argument and also used Key as another argument. The title is used to display the title and Key is used to identify the widget in the build environment.\nHere, the build method calls the build method of Scaffold, which in turn calls the build method of AppBar and Center to build its user interface.\nFinally, Center build method calls Text build method.\nFor a better understanding, the visual representation of the same is given below −",
      "image": "assets/intro1.jpg"
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
            'Introduction',
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
      body: Container(
        child: ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: Intor.length,
    itemBuilder: (BuildContext context, int index) {
    return  Padding(
      padding: const EdgeInsets.only(top: 15,right: 8,left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(child: Text(Intor[index]["heading"],style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),),
          SizedBox(height: 10,),
          Container(child: Text(Intor[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
          Image.asset(Intor[index]["image"])


        ],
      ),
    );   }),

      ),

    );
  }
}
