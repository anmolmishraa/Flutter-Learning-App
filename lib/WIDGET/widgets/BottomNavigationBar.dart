import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class BottomNavigationBarwidget extends StatefulWidget {
  const BottomNavigationBarwidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarwidgetState createState() => _BottomNavigationBarwidgetState();
}

class _BottomNavigationBarwidgetState extends State<BottomNavigationBarwidget> {
  List BottomNavigation=[

    {
      "imageshow":false,
      "image":"",
      "heading": "Bottom Navigation Bar",
      "content": "The Bottom Navigation bar has become popular in the last few years for navigation between different UI. Many developers use bottom navigation because most of the app is available now using this widget for navigation between different screens.\nThe bottom navigation bar in Flutter can contain multiple items such as text labels, icons, or both. It allows the user to navigate between the top-level views of an app quickly. If we are using a larger screen, it is better to use a side navigation bar.\napplication, we usually set the bottom navigation bar in conjunction with the scaffold widget. Scaffold widget provides a Scaffold.bottomNavigationBar argument to set the bottom navigation bar. It is to note that only adding BottomNavigationBar will not display the navigation items. It is required to set the BottomNavigationItems for Items property that accepts a list of BottomNavigationItems widgets."
    },
    {
      "imageshow":false,
      "image":"",
      "heading": "Remember the following key points while adding items to the bottom navigation bar:",
      "content": "We can display only a small number of widgets in the bottom navigation that can be 2 to 5.\nIt must have at least two bottom navigation items. Otherwise, we will get an error.\nIt is required to have the icon and title properties, and we need to set relevant widgets for them."
    },
    {
      "imageshow":false,
      "image":"",
      "heading": "Properties of the BottomNavigationBar Widget",
      "content": "The following are the properties used with the bottom navigation bar widget:"
    },
    {
      "imageshow":false,
      "image":"",
      "heading": "items:",
      "content": "It defines the list to display within the bottom navigation bar. It uses argument BottomNavigationBarItem that contains sup-properties given below:"
    },
    {
      "imageshow":false,
      "image":"",
      "heading": "currentIndex: ",
      "content": "It determines the current active bottom navigation bar item on the screen."
    },
    {
      "heading": "onTap:",
      "content": "It is called when we tapped one of the items on the screen.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "iconSize:",
      "content": " It is used to specify the size of all bottom navigation item icons.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "fixedColor:",
      "content": "It is used to set the color of the selected item. If we have not set a color to the icon or title, it will be shown.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "type:",
      "content": "It determines the layout and behavior of a bottom navigation bar. It behaves in two different ways that are: fixed and shifting. If it is null, it will use fixed. Otherwise, it will use shifting where we can see an animation when we click a button.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Example:",
      "content": "Let us understand how to create a bottom navigation bar in Flutter application with the help of an example. So, open the android studio and create the Flutter application. Next. Open the main.dart file and remove its code with the below code:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=18APkRvpu3x1qfDJxc7RNOympiIkmNBJT"
    },
    {
      "heading": "Output:",
      "content": "When we run the app, we should get the UI similar to the below screenshot:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Epl0k0ARAlCNnWnUUFNbJO_3gHgK0NSL"
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: BottomNavigation.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(BottomNavigation[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(BottomNavigation[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      BottomNavigation[index]["imageshow"]==true?
                      Image.network(BottomNavigation[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),




    );
  }
}
