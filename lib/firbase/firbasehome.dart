import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class FirbaseHome extends StatefulWidget {
  const FirbaseHome({Key? key}) : super(key: key);

  @override
  _FirbaseHomeState createState() => _FirbaseHomeState();
}

class _FirbaseHomeState extends State<FirbaseHome> {
  List fir=[
    {
      "heading": "Create a Flutter and Firebase project",
      "content": "Create a new Flutter project using the following command:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Lx_YBjOFal3rcDzwr6hNl9cX-h60fL3v"
    },
    {
      "heading": "",
      "content": "Open the project in your favorite code editor. Here’s how to open it using VS Code:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1a1BhnziG_QUKvT5YzVg42n9d_bvKsCF_"
    },
    {
      "heading": "",
      "content": "To integrate Firebase with your Flutter project, you have to create a new Firebase project by going to the console.\n\nAdd a new project and give it a name. We don’t need Google Analytics for this sample project, so you can disable it. Once you’ve created your project, you’ll be directed to your Firebase project dashboard.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Set up Firebase for Android, iOS, and web",
      "content": "To use Firebase with Android, iOS or web, you have to complete some configurations for each platform. See the complete configuration guides below:\n\nAndroid installation\niOS installation\nWeb installation\nNow that we have the basic setup for using Firebase, let’s dive into our Flutter app.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Import Firebase plugins",
      "content": "Before you start to implement the authentication logic, you need to import the following plugins:\n\nfirebase_core, which is required to use any Firebase service in a Flutter app\nfirebase_auth to get access to Firebase Authentication services\nAdd these plugins to your pubspec.yaml file:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1vfELHbIPi9elWwz--ySrAkQfxiJN8g2L"
    },
    {
      "heading": "Initialize Firebase App",
      "content": "Before using any Firebase service within the Flutter app, you need to initialize Firebase App.\n\nModify the main.dart file to the following:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=133jKi6ctwp7wZYMCA3Ttonmie4HnpDLk"
    },
    {
      "heading": "",
      "content": "Add a new method to initialize Firebase App:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1MAm5i0pDb1XhhIwryO-zqRrW_vQtLDym"
    },
    {
      "heading": "",
      "content": "Because this method is asynchronous, you have to use FutureBuilder inside the build method:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1N3ZH7UVLS7pxiOzUgnv7MA03kxw93Nfu"
    },
    {
      "heading": "Register a new user",
      "content": "When a new user arrives, before logging in, they have to register to the Firebase authentication.\n\nCreate a new dart file called fire_auth.dart and define a new method called registerUsingEmailPassword():Here we are registering a new user using the email and password provided and associating the name of the user with this profile.\n\nThere can be various FirebaseAuthException errors, which we have handled in the above code snippet.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1p1e8bJX3guaVRoCyhn39MthJvmzvDpM_"
    },
    {
      "heading": "User sign-in and sign-out",
      "content": "The email and password are used to generate the User object provided by Firebase. The User can be used later to retrieve any additional data (e.g., user name, profile picture, etc.) stored in that account.\n\nYou can use the signOut() method to log a user out. There is no need to create a separate method for signing out because it’s just a single line of code:The email and password are used to generate the User object provided by Firebase. The User can be used later to retrieve any additional data (e.g., user name, profile picture, etc.) stored in that account.\n\nYou can use the signOut() method to log a user out. There is no need to create a separate method for signing out because it’s just a single line of code:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=11e2azloL1UFr-xfGvAxRMlu6Cyb6bWyf"
    },

    {
      "heading": "",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1S7YuK0CpchOc2rrmIdKFsAxOshnuUXM2"
    },
    {
      "heading": "Send email verification",
      "content": "Let’s say you want to verify whether a user has entered the correct email address before proceeding. To send an email verification, you can use the sendEmailVerification() method on the User object:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1bhcUohwIvx16dPWsBSNruIpPIRO7UGJH"
    },
    {
      "heading": "Refresh user",
      "content": "We’ll define one more method inside the FireAuth class for refreshing the User:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1H7h8-VZe5LhiQ0EalZekeJSQn0E2krit"
    },



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
            'FirBase',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: fir.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(fir[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(fir[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      fir[index]["imageshow"]==true?
                      Image.network(fir[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
