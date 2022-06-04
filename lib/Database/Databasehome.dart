import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';

import 'hive.dart';
import 'mysql.dart';
import 'objectbox.dart';
class Database extends StatefulWidget {
  const Database({Key? key}) : super(key: key);

  @override
  _DatabaseState createState() => _DatabaseState();
}

class _DatabaseState extends State<Database> {
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
            'DataBase',
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          InkWell(onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HiveDatabase()),
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
                      Text("Hive",style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios,)
              ],
            ),
          ),
          InkWell(onTap: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MysqlDatabse()),
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
                      Text("MySql",style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios,)
              ],
            ),
          ),
          InkWell(onTap: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ObjectBox()),
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
                      Text("ObjectBox",style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios,)
              ],
            ),
          ),


        ],

      ),
    );
  }
}
