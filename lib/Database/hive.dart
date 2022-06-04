import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class HiveDatabase extends StatefulWidget {
  const HiveDatabase({Key? key}) : super(key: key);

  @override
  _HiveDatabaseState createState() => _HiveDatabaseState();
}

class _HiveDatabaseState extends State<HiveDatabase> {
  List hive=[
    {
  "heading": "",
  "content": "Hive is a lightweight and blazing fast key-value database written in pure Dart.",
  "imageshow": false,
  "image": ""
},
    {
      "heading": "Features",
      "content": "🚀 Cross platform: mobile, desktop, browser\n⚡ Great performance (see benchmark)\n❤️ Simple, powerful, & intuitive API\n🔒 Strong encryption built in\n🎈 NO native dependencies\n🔋 Batteries included",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Getting Started ",
      "content": "",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Add to project",
      "content": "Add the following to your pubspec.yaml:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1xxeEbrgC5BpPbnP6ufGVlLVA0TdOliK_"
    },
    {
      "heading": "Initialize",
      "content": "Initializes Hive with a valid directory in your app files. You can also provide a subdirectory:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1j4Rj3jgL1JB7vqos5ImUKAm_EyQ8bdJa"
    },
    {
      "heading": "Open a Box",
      "content": "All of your data is stored in boxes.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1toiKkIru1xOJOme053gwRmtlZqN3Zcwf"
    },
    {
      "heading": "Example",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1MSs-4JdI-T98EFEqk5MlXu6wub-b_kZp"
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
Container(child: Image.asset("assets/hiveimage.png"),height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Container(
              height: MediaQuery.of(context).size.height-120,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: hive.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(child: Text(hive[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                          SizedBox(height: 15,),



                          Container(child: Text(hive[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                          SizedBox(height: 15,),
                          hive[index]["imageshow"]==true?
                          Image.network(hive[index]["image"]):Container()

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
