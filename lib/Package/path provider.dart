import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class PathProvider extends StatefulWidget {
  const PathProvider({Key? key}) : super(key: key);

  @override
  _PathProviderState createState() => _PathProviderState();
}

class _PathProviderState extends State<PathProvider> {
  List path=[
    {
      "heading": "",
      "content": "The Flutter plugin used for finding commonly used locations on the filesystem of the device. It Supports for both  iOS and Android.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "PATH PROVIDER METHODS",
      "content": "You can use these 8 methods to access device storage.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getApplicationDocumentsDirectory():",
      "content": "Gives path to the directory where Application can place it’s private files, Files only get wiped out when application itself removed.\niOS – NSDocumentsDirectory API.\nAndroid – returns AppData directory.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getTemporaryDirectory(): ",
      "content": "This gives path to the temporary directory in device. Files can be deleted at any time.\niOS – It uses NSCachesDirectory API\nAndroid – Use getCacheDir API",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getExternalStorageDirectory():",
      "content": "Only available in Android. Provides path to External storage(Generally SD card).\nThis does not support in iOS, it will throw UnSupportedError if you use it.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getDownloadsDirectory():",
      "content": "It returns path of the directory where downloaded files get stored. Not available in Android and iOS, it gives UnSupportedError.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getExternalCacheDirectories()",
      "content": "It returns list of path of directories where app’s external cache data get stored. Commonly, these types of paths lives in SD cards and only available in Android, better check it out which OS is running because iOS throws UnSupportedError.\nAndroid – returns Context.getExternalCacheDirs().\nBelow API 19 : Context.getExternalCacheDir() API.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getLibraryDirectory()",
      "content": "It returns path of the directory where app store persistent data such as sqlite.db, Not available in Android.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "getApplicationSupportDirectory():",
      "content": "It returns the directory where app place support files. It’s not recommended to use for user data files.\niOS – Uses NSApplicationSupportDirectory API.\nAndroid – Uses getFilesDir API.",
      "imageshow": false,
      "image": ""
    },

    {
      "heading": "Adding the dependency package into the Flutter:",
      "content": "It returns the directory where app place support files. It’s not recommended to use for user data files.\niOS – Uses NSApplicationSupportDirectory API.\nAndroid – Uses getFilesDir API.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1hcJHEop45ViuG_bCLflf_nDD0T8BjWtD"
    },
    {
      "heading": "Code",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1d1D-UQdk1YlabYHTyM9tiJXZ5KHdOXGJ"
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
              itemCount: path.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(path[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(path[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      path[index]["imageshow"]==true?
                      Image.network(path[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
