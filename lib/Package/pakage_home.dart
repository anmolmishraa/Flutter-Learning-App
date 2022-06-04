import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:flutter_learning/Package/path%20provider.dart';
import 'package:flutter_learning/Package/sharedPre.dart';
import 'package:flutter_learning/Package/urllauncher.dart';
import 'package:flutter_learning/Package/videoplayer.dart';
import 'package:shimmer/shimmer.dart';

import 'Connectivity.dart';
import 'crypto.dart';
import 'httppackage.dart';
import 'image_picker.dart';
class PackageHome extends StatefulWidget {
  const PackageHome({Key? key}) : super(key: key);

  @override
  _PackageHomeState createState() => _PackageHomeState();
}

class _PackageHomeState extends State<PackageHome> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15,right: 8,left: 8),
        child: Column(


          children: [
         
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sharedpre()),
              );

            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_2box1,
                          MyColor.Package_home_gradiant_2box2,

                        ]
                    )
                ),
child: Center(child: Text("Shared_Preferences",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>UrlLauncher()),
                );
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_3box1,
                          MyColor.Package_home_gradiant_3box2,

                        ]
                    )
                ),
child: Center(child: Text("Url_Launcher",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Imagepicker()),
              );

            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_4box1,
                          MyColor.Package_home_gradiant_4box2,

                        ]
                    )
                ),
                child: Center(child: Text("Image picker" ,style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VedioPlayer()),
              );

            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_5box1,
                          MyColor.Package_home_gradiant_5box2,

                        ]
                    )
                ),
                child: Center(child: Text("Video Player" ,style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Connectivitypacking()),
              );
            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_6box1,
                          MyColor.Package_home_gradiant_6box2,

                        ]
                    )
                ),
                child: Center(child: Text("Connectivity" ,style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HttpPackage()),
              );
            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_7box1,
                          MyColor.Package_home_gradiant_7box2,

                        ]
                    )
                ),
child: Center(child: Text("Http",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PathProvider()),
              );
            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_8box1,
                          MyColor.Package_home_gradiant_8box2,

                        ]
                    )
                ),
child: Center(child: Text("Path Provider",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CryptoPackage()),
              );

            },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          MyColor.Package_home_gradiant_8box1,
                          MyColor.Package_home_gradiant_8box2,

                        ]
                    )
                ),
                child: Center(child: Text("Crypto",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),



          ],
        ),
      ),

    );
  }
}
