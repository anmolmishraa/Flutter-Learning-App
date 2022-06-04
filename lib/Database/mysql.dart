import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class MysqlDatabse extends StatefulWidget {
  const MysqlDatabse({Key? key}) : super(key: key);

  @override
  _MysqlDatabseState createState() => _MysqlDatabseState();
}

class _MysqlDatabseState extends State<MysqlDatabse> {
  List mysql=[
    {
      "heading": "Mysql",
      "content": "A MySQL driver for the Dart programming language. Works on Flutter and on the server.\n\nThis library aims to provide an easy to use interface to MySQL. mysql1 originated as a fork of the SQLJocky driver.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Usage",
      "content": "Connect to the database",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1uDEVNpYgcTe4w_RdnqxnZ2ARG2-J6F7d"
    },
    {
      "heading": "Execute a query with parameters:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1WoqTkhdzy3t-qUyLuFTvHWEfkcVA7br4"
    },

    {
      "heading": "Use the results:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1RbXSVTwmQ-YmD2Lxe0RuPmkNwaV7H6fZ"
    },
    {
      "heading": "Execute a query with multiple sets of parameters:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1lONr99XACPqiObvJRnXpx2AyYJfhYti3"
    },
    {
      "heading": "Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1n8ByWn3flDm_wyyYmFOOdhvCRLm4PsAq"
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
          // Container(child: Image.asset("assets/objectbox.png"),height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Container(
              height: MediaQuery.of(context).size.height-120,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mysql.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(child: Text(mysql[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                          SizedBox(height: 15,),



                          Container(child: Text(mysql[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                          SizedBox(height: 15,),
                          mysql[index]["imageshow"]==true?
                          Image.network(mysql[index]["image"]):Container()

                        ],
                      ),
                    );}),

            ),
          ),
        ],
      ),

    );
  }
}
