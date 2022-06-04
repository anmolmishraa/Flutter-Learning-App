import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List tab=[
    {
      "heading": "TabBar and TabBarView",
      "content": "This tutorial shows you how to create a tab layout in Flutter using TabBar and TabBarView.\nIf your application needs to display some contents, it's quite common to separate the contents into multiple tabs. In Flutter, creating such a layout can be done easily thanks to TabBar and TabBarView widgets. TabBar is used to create the tabs, while TabBarView is used to define the content of each tab. Flutter already handles how to switch between tabs, which makes it easier for us. In addition, Flutter also makes it possible to customize the style and behavior of the tab layout. Below are the explanations and examples.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Create TabBar",
      "content": "If you want to implement tab layout, first you need to have a tab bar which contains the list of tabs. In Flutter, you can use the TabBar widget. The TabBar can be placed anywhere according to the design. If you want to place it right under the AppBar, you can pass it as the bottom argument of the AppBar. Below is the constructor.\nThe constructor has so many arguments, but most of them are optional. The only required argument is tabs for which you need to pass a list of Tab widgets. For each tab that you want to display, you need to create a Tab widget. The number of Tab widgets must be the same as the TabController.length and the length of TabBarView.children.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1ax5LT-PjCbP5Oe1ixCrSkJuyV6ajD6BJ"
    },

    {
      "heading": "Full Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1fUXEd2NwoPwEu7De3X6pbwhKK29Pxctf"
    },
    {
      "heading": "Result",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1XmlKTfXN9XZsry4L0RQR1e7w_ae27ZbK"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              itemCount: tab.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(tab[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(tab[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      tab[index]["imageshow"]==true?
                      Image.network(tab[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
