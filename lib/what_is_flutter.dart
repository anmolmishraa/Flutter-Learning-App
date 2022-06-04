import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';

import 'installation.dart';
import 'package:readmore/readmore.dart';
class Flutter extends StatefulWidget {
  const Flutter({Key? key}) : super(key: key);

  @override
  _FlutterState createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  List flutter=[
    {
  "image":"",
      "imagebool":false,
      "answer1":"",
      "questions": "What is flutter ?",
      "answer": "Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android). Flutter consists of two important parts:- An SDK (Software Development Kit): A collection of tools that are going to help you develop your applications. This includes tools to compile your code into native machine code (code for iOS and Android). A Framework (UI Library based on widgets): A collection of reusable UI elements (buttons, text inputs, sliders, and so on) that you can personalize for your own needs. To develop with Flutter, you will use a programming language called Dart. The language was created by Google in October 2011, but it has improved a lot over these past years. Dart focuses on front-end development, and you can use it to create mobile and web applications. If you know a bit of programming, Dart is a typed object programming language. You can compare Dart's syntax to JavaScript. Flutter is a modern framework, and you can feel it! It’s way simpler to create mobile applications with it. If you have used Java, Swift, or React Native, you'll notice how Flutter is different.",
"sho":false,
    },
    {
      "imagebool":false,
      "image":"",
      "answer1":"",
      "questions": "Simple to learn and use",
      "answer": "Flutter is a modern framework, and you can feel it! It’s way simpler to create mobile applications with it. If you have used Java, Swift, or React Native, you'll notice how Flutter is different.  I personally never liked mobile application development before I started using Flutter.  What I love about Flutter is that you can create a real native application without a bunch of code.",
      "sho": true,

    },
    {
      "questions": "Why Choose Flutter on Your Next Project",
      "answer": "There are things that are of great value to the business — platform stability, its performance, a guarantee of successful support, and improvement of technologies and products. Any problems and shortcomings in any of these aspects may lead to risks, including direct and indirect financial losses.  With this in mind, Flutter lowers risks for your business due to the following points:",
      "sho": true,
      "image": "",
      "answer1": "",
      " imagebool": false,

    },
    {
      "questions": "The best in class (cross-platform) performance and resource consumption",
      "answer": "compilation of native code and high-performance rendering engine. The first provides an easy way of establishing communication between platform-native code and Dart through platform channels. Thus, developers can implement into a Flutter app anything that a native app can do, just with a little more effort on the native side. Because of the engine (Flutter uses Skia for rendering itself), a UI built in Flutter can be launched on virtually any platform, assuming this platform supports Flutter. Putting it differently, developers no longer have to adjust the UI to transfer it to a platform, which simplifies the development process vastly. A good UX is incredibly dependent on the performance of the application. Flutter application performance in most cases will be indistinguishable from the native application. This is because Flutter doesn’t rely on intermediate code representations or interpretation. Application on Flutter is compiled directly into machine code, eliminating any performance errors in the interpretation process. This provides it with the highest performance and makes it the most resource saving software among cross-platform technologies.",
      "sho": true,
      "image": "",
      "answer1": "",
      " imagebool": false,

    },

    {
      "imagebool":true,
      "questions": "Great UI",
      "answer": "Will Larche, Software Engineer at Google, says, “Flutter’s architecture is designed for building beautiful, custom UI. Flutter’s main goal is to make building polished, custom app interfaces a faster, more delightful experience for designers and developers. Flutter is powerful enough to draw anything designers dream up.”  Beautiful, custom design. The powerful thing of Flutter is Skia, the open-source, high-performance graphics engine used by Adobe, Chrome, and Amazon Kindle. Flutter allows users to develop applications with custom designs, which will look equally good on iOS and Android devices. Applications developed on Flutter — unlike its competitors — have no risk that there will UI failures when updating the software.",
      "sho": true,
      "image": "https://nix-united.com/wp-content/uploads/2020/08/reflectly_screens.png",
      "answer1": "",

    },
    {
      "imagebool":true,
      "questions": " Quick code development ",
      "answer": "Flutter creators wanted to invent a technology with the quickest opportunity to deliver a great-performing, cross-platform mobile application. The following features allow this:  Hot reload. Flutter’s hot reloading helps save time while developing by letting the developer see the applied changes in real-time. This capability helps developers be significantly more efficient and productive. Flutter’s hot reload works better than competitors’ similar features. It allows the developer to pause code execution, make changes to the code, and continue the code from the same place. This greatly speeds up development and allows more experimenting.",
      "sho": true,
      "image": "https://nix-united.com/wp-content/uploads/2020/08/hot-reload-36252b9c05984443ea5cd1960bab0f4ca904a6dfbe71165af4ed7f1b1c037124-1.gif",
      "answer1": "Widgets:- One of the most significant benefits of Flutter is how it uses ready-made widgets. This ensures that Flutter offers a consistent model for development and design. Widgets are Google-based, so they are high code quality and perform better than other open-source frameworks. As most of them are extremely customizable, they save developers’ time like no other framework. In addition to the major layout widgets, Flutter widgets follow both the Material and Cupertino looks, which is a huge advantage. Minimal code and access to native features. Flutter lets developers use Dart, which is compiled directly into the ARM code of mobile devices and helps not only to speed up applications, it allows them to launch quicker also.",

    },
    {
      "imagebool":false,
      "image":"",
      "answer1":"",
      "questions": "Ideal for startup MVPs",
      "answer": "If you want to show your product to investors as soon as possible, Flutter is a good choice.  Here are my top 4 reasons to use it for your MVP:  It’s cheaper to develop a mobile application with Flutter because you don’t need to create and maintain two mobile apps (one for iOS and one for Android). One developer is all you need to create your MVP. It’s performant – you won't notice the difference between a native application and a Flutter app. It’s beautiful – you can easily use widgets provided by Flutter and personalize it to create a valuable UI for your customers (you can find examples of applications made with Flutter below).",
      "sho":true,
    },
    {
      "imagebool":true,
      "questions": "How Flutter Works: Widget Strategy and Dart Programming Language",
      "answer": "The framework of Flutter, written in the Dart programming language, has the Flutter engine, Foundation library, and widgets. The approach to development in Flutter differs from others by its declarative UI writing. Here, there is a need to start from the end, meaning before starting the development of some element, the user needs to have in mind a complete picture of what kind of UI it will be. Many developers distinguish this UI writing as a more clear one, but it also causes certain difficulties for developers at first.",
      "sho": true,
      "image": "https://nix-united.com/wp-content/uploads/2020/08/Flutter_graphics_01.jpg",
      "answer1": "The main idea of Flutter is that developers can build the entire user interface by simply combining different widgets. The application interface consists of various nested widgets, which can be any object. This applies to anything from buttons to padding, and by combining widgets, the developer can customize the application radically. Widgets can influence each other and use built-in functions to respond to external changes in the state. Widgets are important elements of the user interface and comply with the design specifications of Android, iOS and conventional web applications.   With Flutter, developers can create custom widgets, which can be easily combined with existing ones. Note that there are no OEM widgets, but Flutter Gallery provides developers with their own ready-made widgets — a set of application examples that show how to use standard widgets — which look like native Android and iOS design languages (Material and Cupertino).",
      "": ""
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
            'Flutter ',
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

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Installation()),
                );
              },child: Icon(CupertinoIcons.forward)),
            )
          ),

        ],

      ),
    body: Column(
      children: [
        Container(


          child: Expanded(
            child: ListView.builder(        
              itemCount: flutter.length,
              itemBuilder: (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    RichText(
                      text: TextSpan(
                          text: flutter[index]["sho"]==false?'Q: ':"",
                          style: TextStyle(
                              color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: flutter[index]["questions"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }
                            )
                          ]
                      ),
                    ),
                    ReadMoreText(

                        flutter[index]["answer"], trimLines: 1,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Length,
                      trimCollapsedText: 'read more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                      lessStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                      style: TextStyle(fontWeight: FontWeight.normal,
                                        fontSize: 18,color: Colors.black),
                    ),

                    // RichText(
                    //   text: TextSpan(
                    //       text: flutter[index]["sho"]==false?'Ans: ':"",
                    //       style: TextStyle(
                    //           color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                    //       children: <TextSpan>[
                    //         TextSpan(text: flutter[index]["answer"],
                    //             style: TextStyle(fontWeight: FontWeight.normal,
                    //                  fontSize: 18),
                    //             recognizer: TapGestureRecognizer()
                    //               ..onTap = () {
                    //                 // navigate to desired screen
                    //               }
                    //         )
                    //       ]
                    //   ),
                    // ),
                    SizedBox(height: 10,),
                    flutter[index]["imagebool"]==true?
                    InteractiveViewer(
                      maxScale: 2.5,
                      minScale: .5,
                      child: Image.network(flutter[index]["image"]),
                    ):Container(),
                    ReadMoreText(

                      flutter[index]["answer1"], trimLines: 1,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Length,
                      trimCollapsedText: 'read more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                      lessStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                      style: TextStyle(fontWeight: FontWeight.normal,
                          fontSize: 18,color: Colors.black),
                    ),
                    // RichText(
                    //   text: TextSpan(
                    //       text:"",
                    //       style: TextStyle(
                    //           color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                    //       children: <TextSpan>[
                    //         TextSpan(text: flutter[index]["answer1"],
                    //             style: TextStyle(fontWeight: FontWeight.normal,
                    //                 fontSize: 18),
                    //             recognizer: TapGestureRecognizer()
                    //               ..onTap = () {
                    //                 // navigate to desired screen
                    //               }
                    //         )
                    //       ]
                    //   ),
                    // ),

                  ],

                ),

              ),
            );    }),
          )

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Thank you ",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 25),),
            Container(
                height: 40,width: 40,
                child: Image.asset("assets/flappy-dash.gif"))
          ],
        ),
      ],
    ),

    );
  }
}
