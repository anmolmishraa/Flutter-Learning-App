import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:flutter_learning/WIDGET/Introduction.dart';
import 'package:flutter_learning/WIDGET/Visualization.dart';
import 'package:shimmer/shimmer.dart';

import 'Widget Build Visualization/Layout.dart';
import 'Widget Build Visualization/Platformspecific.dart';
import 'Widget Build Visualization/basic.dart';
class WidgetHome extends StatefulWidget {
  const WidgetHome({Key? key}) : super(key: key);

  @override
  _WidgetHomeState createState() => _WidgetHomeState();
}

class _WidgetHomeState extends State<WidgetHome> {

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
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            SizedBox(height: 30,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Introduction()),
              );
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Row(

                      children: [
                        Icon(Icons.check_box_outline_blank,color: MyColor.TheamColor,),
                        Text("Introduction to Widgets",style: TextStyle(color: MyColor.TheamColor,),),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,color: MyColor.TheamColor,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            InkWell(onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Visualization()),
              );
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Row(

                      children: [
                        Icon(Icons.check_box_outline_blank,color: MyColor.TheamColor,),
                        Text("Widget Build Visualization",style: TextStyle(color: MyColor.TheamColor,),),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,color: MyColor.TheamColor,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            // InkWell(onTap: (){
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => PlatformSpecific()),
            //   );
            //
            // },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width*.7,
            //         child: Row(
            //
            //           children: [
            //             Icon(Icons.check_box_outline_blank,color: MyColor.TheamColor,),
            //             Text("Platform specific widgets",style: TextStyle(color: MyColor.TheamColor,),),
            //           ],
            //         ),
            //       ),
            //       Icon(Icons.arrow_forward_ios,color: MyColor.TheamColor,)
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,),
            // InkWell(onTap: (){
            //
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => LayoutWidgets()),
            //   );
            // },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            //     children: [
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width*.7,
            //         child: Row(
            //
            //           children: [
            //             Icon(Icons.check_box_outline_blank,color: MyColor.TheamColor,),
            //             Text("Layout widgets",style: TextStyle(color: MyColor.TheamColor,),),
            //           ],
            //         ),
            //       ),
            //       Icon(Icons.arrow_forward_ios,color: MyColor.TheamColor,)
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,),
            // InkWell(onTap: (){
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => Basic()),
            //   );
            // },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width*.7,
            //         child: Row(
            //
            //           children: [
            //             Icon(Icons.check_box_outline_blank,color: MyColor.TheamColor,),
            //             Text("Platform independent / basic widgets",style: TextStyle(color: MyColor.TheamColor,),),
            //           ],
            //         ),
            //       ),
            //       Icon(Icons.arrow_forward_ios,color: MyColor.TheamColor,)
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
