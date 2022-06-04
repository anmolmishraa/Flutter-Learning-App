import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class VedioPlayer extends StatefulWidget {
  const VedioPlayer({Key? key}) : super(key: key);

  @override
  _VedioPlayerState createState() => _VedioPlayerState();
}

class _VedioPlayerState extends State<VedioPlayer> {
  List vid=[
    {
      "heading": "Introduction:",
      "content": "Chewie and video_player can play videos from three sources — assets, files, and network. Its excellence is that you don’t have to compose a ton of code to change the information source. Switching from an asset for a network video involves only a couple of keystrokes.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Implementation:",
      "content": "Add dependencies to pubspec — yaml file.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1eDQKb5f3z0RvWo_kc7a_QXOYjU_D5o13"
    },
    {
      "heading": "Import",
      "content": "Add assets to pubspec — yaml file.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1rigqXH6bnoi_Ln2_sGRCqifG1pTlh1Sa"
    },
    {
      "heading": "Add the internet permission",
      "content": "Add this to your project\nmroot>/android/app/src/main/AndroidManifest.xml:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Wy_trGxlHnCQkiJ8sypMTHGGZPXum6KH"
    },
    {
      "heading": " Enable AndriodX",
      "content": "Add this to your project\nmroot>/android/app/src/main/AndroidManifest.xml:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=123_33uc87A4zXGWXa8d_fB4g0F3xRkdY"
    },
    {
      "heading": "Code File:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1OxfqmTCxOfRNhX_sm5421mYj0UfKkp1g"
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
            'Package',
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
              itemCount: vid.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(vid[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(vid[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      vid[index]["imageshow"]==true?
                      Image.network(vid[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
