import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Connectivitypacking extends StatefulWidget {
  const Connectivitypacking({Key? key}) : super(key: key);

  @override
  _ConnectivitypackingState createState() => _ConnectivitypackingState();
}

class _ConnectivitypackingState extends State<Connectivitypacking> {
  List connet=[
    {
      "heading": "Connectivity",
      "content": "Most mobile applications require a connection to the Internet through either a WiFi or cellular data network. You may want your application to react differently based on the type of network connection. For example, you can choose to disable images being downloaded when the user is using a cellular data network.\n\nThis tutorial will go over how you can check if the mobile device is connected to a network using the connectivity package. If the device is not connected to a WiFi network we are going to display an error page, which directs the user to connect to WiFi before using the application. We will also handle the case where the user turns off WiFi while using the app.",
      "imageshow": false,
      "image": ""
    },

    {
      "heading": "Getting Started",
      "content": "For this tutorial, we are going to use the connectivity(2.0.2) package to find which type of network the device is connected to, and provider(4.2.0) for state management. Review this article (Provider — Easy State Management In Flutter) if you are unfamiliar with using Provider. To include some nice illustrations to display our connectivity status we will also add the flutter_svg(0.18.1) package. As a bonus, we will add a button to direct you to the device settings page with app_settings(4.0.4). Add these dependencies to your pubspec.yaml file.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1tMX-kseAhjlGOOsG3i23lIYpv8PVd1hC"
    },
    {
      "heading": "Connectivity Change Notifier",
      "content": "When using the connectivity package, we can get the ConnectivityResult which can be one of the following values:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1F7g3EO9p1ER2V-wH1WlVokFkWNQ1xt9_"
    },
    {
      "heading": "",
      "content": "There are two ways to get the ConnectivityResult :\n\nStream<ConnectivityResult> get onConnectivityChanged\nFuture<ConnectivityResult> checkConnectivity\nThe first allows us to listen to a stream, which fires whenever the connectivity result of the device changes. The second function checks for the current connection status of the device when called. For the purposes of this tutorial, we are going to use both functions, since we want to check what the current connection status is on the initial load and then continue to listen to any change.\nTo handle the changes in state we make a ChangeNotifier class to handle this.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1llF-pXVhvowH8YziuacipSe5_i1VG4ix"
    },
    {
      "heading": "Consuming Connectivity Change Notifier on UI",
      "content": "We now want to use the ChangeNotifer class created to display connectivity information to the user. We will initialize a ChangeNotifierProvider right above the Material App, so this Provider can be consumed at all levels of the widget tree.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1lsbZNtVcMa7LFzGJaJ7thb4WGUuKKdBm"
    },
    {
      "heading": "",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1dMkETD7qEEsDl5trUw6vb3X_IDVtyL8f"
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
              itemCount: connet.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(connet[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(connet[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      connet[index]["imageshow"]==true?
                      Image.network(connet[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
