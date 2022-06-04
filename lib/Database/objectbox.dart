import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class ObjectBox extends StatefulWidget {
  const ObjectBox({Key? key}) : super(key: key);

  @override
  _ObjectBoxState createState() => _ObjectBoxState();
}

class _ObjectBoxState extends State<ObjectBox> {
  List Object=[
    {
      "heading": "Features",
      "content": "ObjectBox is a super-fast database storing Dart objects locally.\n\n\n🏁 High performance - improving response rates and enabling real-time applications.\n🪂 ACID compliance - Atomic, Consistent, Isolated, Durable.\n🔗 Relations - object links / relationships are built-in.\n🌱 Scalable - grows with your app, handling millions of objects with ease.\n💐 Queries - filter data as needed, even across relations.\n🦮 Statically typed - compile time checks & optimizations.\n💻 Multiplatform - Android, iOS, macOS, Linux, Windows.\n📃 Schema migration - change your model with confidence.\n👥 ObjectBox Sync - keeps data in sync offline or online, between devices and servers.",
      "imageshow": false,
      "image": "https://drive.google.com/uc?export=view&id=1MSs-4JdI-T98EFEqk5MlXu6wub-b_kZp"
    },
    {
      "heading": "Sneak peek",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1c8bR1FaRZT83v84ftbfzhoWqSPpNwdVs"
    },
    {
      "heading": "Add ObjectBox to your project",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1BtjrRkGlmhkNDEH26YRX5QHuddYtn9r7"
    },
    {
      "heading": "Create a Store",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1LrDU7u_uuj8knC4i9Bgmd0_NT3XcLnk0"
    },
    {
      "heading": "Basic Box operations",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1JT820ahNIGKWFt0l9Q1rzDouC3uVsQ4N"
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
          Container(child: Image.asset("assets/objectbox.png"),height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Container(
              height: MediaQuery.of(context).size.height-120,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Object.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(child: Text(Object[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                          SizedBox(height: 15,),



                          Container(child: Text(Object[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                          SizedBox(height: 15,),
                          Object[index]["imageshow"]==true?
                          Image.network(Object[index]["image"]):Container()

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
