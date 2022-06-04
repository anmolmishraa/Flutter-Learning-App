import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class HttpPackage extends StatefulWidget {
  const HttpPackage({Key? key}) : super(key: key);

  @override
  _HttpPackageState createState() => _HttpPackageState();
}

class _HttpPackageState extends State<HttpPackage> {
  List http=[
    {
      "heading": "Http Package",
      "content": "Most apps have to perform network requests over the internet. As such, it’s important to handle network calls elegantly to avoid unnecessary errors in API calls.\\nIn this article, we’ll take a look at how we can handle REST API requests in Flutter using the http package.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Getting started",
      "content": "Create a new Flutter project using the following command:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1zjFOS6Hrf0qVR-LFNpe8Bf0H4PN9Nh99"
    },

    {
      "heading": "",
      "content": "Add the http package to your pubspec.yaml file:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1HctCVprbIpm2BY-EhR7kGoajn_I3YC4f"
    },
    {
      "heading": "Performing API requests",
      "content": "Now you can start performing the various network requests on the REST API. To keep your code clean, you can define the methods related to network requests inside a separate class.\nCreate a new file called post_client.dart, and define PostClient class inside it:\nDefine the base URL of the server along with the required endpoint in variables:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1McbU_rGgbFlNHF8ApWJNkVq5LMawEmB1"
    },
    {
      "heading": "Fetching data",
      "content": "You can use the GET request to retrieve information from the API. To fetch a single post data, you can define a method like this:\nThis method tries to retrieve a post data according to the ID passed to it. The http.get() method uses the URL to fetch data from the server which is stored in the response variable.\nVerify whether or not the request was successful by checking the HTTP status code, which should be 200 if successful. You can now decode the raw JSON data and use Post.fromJson() to store it in a nice, structured manner using the model class.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=14FvWE-DzzQxrhbDN3nPKW7uiJpiBKrmg"
    },
    {
      "heading": "Sending data",
      "content": "You can use the POST request for sending data to the API. We will create a new post by sending data using the following method:\nWhile sending data, you have to specify the header type in headers and the body that you want to send to the specified endpoint. Also, the JSON data should be sent in an encoded format using the jsonEncode method.\nYou can check whether your POST request was successful using the HTTP status code. If it returns a status code of 201, then the request was successful and we can return the post data.\n",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1-dl-8GRWunpdskINti-dWujStxPAJo0U"
    },
    {
      "heading": "Updating data",
      "content": "You can update any post information present on the API server by using the PUT request. Define the method like this:\nHere, we have used the post ID to specify which post to update and send the request to. If the response status code is 200, then the request was successful and you can return the updated post sent by the server",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1dTW8rYqjnpg4J8w3_-yYdTr5fRdDF9N-"
    },
    {
      "heading": "Deleting data",
      "content": "You can update any post information present on the API server by using the PUT request. Define the method like this:\\nHere, we have used the post ID to specify which post to update and send the request to. If the response status code is 200, then the request was successful and you can return the updated post sent by the server.\\nYou should note that, in the case of deletion, the response returns empty data.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1NvyUxyAAx0r-iMi-T6SJ1Amw5FXrejEv"
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
              itemCount: http.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(http[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(http[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      http[index]["imageshow"]==true?
                      Image.network(http[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
