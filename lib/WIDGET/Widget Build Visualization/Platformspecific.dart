import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:flutter_learning/WIDGET/widgets/BottomNavigationBar.dart';
import 'package:flutter_learning/WIDGET/widgets/Date%20&%20Time%20Pickers.dart';
import 'package:flutter_learning/WIDGET/widgets/FloatingActionButton.dart';
import 'package:flutter_learning/WIDGET/widgets/RaisedButton.dart';
import 'package:flutter_learning/WIDGET/widgets/Scaffold.dart';
import 'package:flutter_learning/WIDGET/widgets/Slider.dart';
import 'package:flutter_learning/WIDGET/widgets/TabBar.dart';
import 'package:flutter_learning/WIDGET/widgets/TextField.dart';
import 'package:flutter_learning/WIDGET/widgets/appbar.dart';
import 'package:shimmer/shimmer.dart';
class PlatformSpecific extends StatefulWidget {
  const PlatformSpecific({Key? key}) : super(key: key);

  @override
  _PlatformSpecificState createState() => _PlatformSpecificState();
}

class _PlatformSpecificState extends State<PlatformSpecific> {
  List speci=[
    {
      "heading": "Platform specific widgets",
      "content": "Flutter has widgets specific to a particular platform - Android or iOS.\nAndroid specific widgets are designed in accordance with Material design guideline by Android OS. Android specific widgets are called as Material widgets.\niOS specific widgets are designed in accordance with Human Interface Guidelines by Apple and they are called as Cupertino widgets.\nSome of the most used material widgets are as follows −"
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
               height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: speci.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Text(speci[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),


                            Container(child: Text(speci[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),



                          ],
                        ),
                      );}),

              ),
              Column(
                children: [
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scaffoldwidget()),
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
                              Text("Scaffold",style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppBarWidget()),
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
                              Text("AppBar",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => BottomNavigationBarwidget()),
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
                              Text("BottomNavigationBar",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => TabBarWidget()),
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
                              Text("TabBar",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => RaisedButtonWidget()),
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
                              Text("RaisedButton",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => FloatingActionButtonwidget()),
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
                              Text("FloatingActionButton",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => DateTimePickersWidget()),
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
                              Text("Date & Time Pickers",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => TextFieldWidget()),
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
                              Text("TextField",style: TextStyle(fontSize: 18),),
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
                      MaterialPageRoute(builder: (context) => Sliderwidget()),
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
                              Text("Slider",style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 10,),
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
