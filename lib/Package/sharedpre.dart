import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Sharedpre extends StatefulWidget {
  const Sharedpre({Key? key}) : super(key: key);

  @override
  _SharedpreState createState() => _SharedpreState();
}

class _SharedpreState extends State<Sharedpre> {
  List shared=[
    {
      "heading": "What is SharedPreferences?",
      "content": "SharedPreferences is used for storing data key-value pair in the Android and iOS.\nSharedPreferences in flutter uses NSUserDefaultson iOS and SharedPreferences on Android, providing a persistent store for simple data.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Why use SharedPreferences in Flutter?",
      "content": "Suppose you wanna save a small value (a flag probably) that you wanna refer later sometime when a user launches the application. Then shared preference comes into action.\nWe do not use SQLite for saving small values because then you will need to write lengthy codes and supporting classes.\nShared Preference let you read and write key-value pair in a couple of lines easily. But always remember, shared preference is not a solution for you to keep complex relational data.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "How to use SharedPreferences in Flutter?",
      "content": "Before using SharedPreferences, you should know that Flutter SDK does not have support SharedPreferences but fortunately, the shared_preferences plugin can be used to persist key-value data on disk.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading":"",
      "content":"",
    "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1-hgi39V-DQ_R31Eqj4_LmfSiixmTrpuc"
    },
    {
      "heading": "ImplementationImport shared_preferences.dart",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1n6DI_S46GKxBL4VWR2ytFtr3erFJQ8ur"
    },
    {
      "heading": "Save data",
      "content": "We can only add int, String, double and bool using SharedPreferences.\n\nThere are setter methods in the SharedPreferences class which take two parameters, key and value.\nkeys are only string values\n",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Saving String value",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=14f_QAcwzPhwB-mRjDXGjqKA8cWvEpqXw"
    },
    {
      "heading": "Saving int value",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1AvNC7UxdwVA20yLHGcJTibgIGFBG_tio"
    },
    {
      "heading": "Saving double value",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=18R4_RC7SugEB5hSlotxawEaVfFG4NbIj"
    },
    {
      "heading": "Saving boolean value",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1D8IW38MgMaorbyMlyg7bl7tj7cq4jTrl"
    },
    {
      "heading": "Read data",
      "content": "When we are reading the data from the storage through SharedPreferences we only required to pass the key only.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1R_nP-EgMdE0MmifobuqeU1P_cYGU2LKP"
    },
    {
      "heading": "",
      "content": "If the value is not present in the storage then we might get a null value.\nTo handle this we can use",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1H_yYmclS9nrPelKI8_f5hCXlEnm3XUaU"
    },
    {
      "heading": " Remove data",
      "content": "To remove the data from the storage we provide the key in the remove(String key) method.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Xs84sIfRyopoUNEpfSWwfRq4rbHphFJC"
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
              itemCount: shared.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(shared[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(shared[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      shared[index]["imageshow"]==true?
                      Image.network(shared[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
