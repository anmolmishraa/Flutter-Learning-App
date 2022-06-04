import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:flutter_learning/Rest_Api/postapi.dart';
import 'package:flutter_learning/Rest_Api/updateapi.dart';
import 'package:shimmer/shimmer.dart';

import 'deleteapi.dart';
import 'getapi.dart';
class ApiHome extends StatefulWidget {
  const ApiHome({Key? key}) : super(key: key);

  @override
  _ApiHomeState createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
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
            'Rest Api',
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Text("Q: What is API ? ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Text("When you use an application on your mobile phone, the application connects to the Internet and sends data to a server. The server then retrieves that data, interprets it, performs the necessary actions and sends it back to your phone. The application then interprets that data and presents you with the information you wanted in a readable way. This is what an API is - all of this happens via API.\nTo explain this better, let us take a familiar example.\n\n\nImagine you’re sitting at a table in a restaurant with a menu of choices to order from. The kitchen is the part of the “system” that will prepare your order. What is missing is the critical link to communicate your order to the kitchen and deliver your food back to your table. That’s where the waiter or API comes in. The waiter is the messenger – or API – that takes your request or order and tells the kitchen – the system – what to do. Then the waiter delivers the response back to you; in this case, it is the food.\nHere is a real-life API example. You may be familiar with the process of searching flights online. Just like the restaurant, you have a variety of options to choose from, including different cities, departure and return dates, and more. Let us imagine that you’re booking you are flight on an airline website. You choose a departure city and date, a return city and date, cabin class, as well as other variables. In order to book your flight, you interact with the airline’s website to access their database and see if any seats are available on those dates and what the costs might be.",style: TextStyle(fontSize: 18),),
SizedBox(height: 15,),
                Text("Method",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 15,),

                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Post()),
                  );
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.7,
                        child: Row(

                          children: [
                            Icon(Icons.check_box_outline_blank,),
                            Text("Post",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),

                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GetApi()),
                  );
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.7,
                        child: Row(

                          children: [
                            Icon(Icons.check_box_outline_blank,),
                            Text("Get",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),

                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeleteApi()),
                  );
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.7,
                        child: Row(

                          children: [
                            Icon(Icons.check_box_outline_blank,),
                            Text("Delete ",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),

                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateApi()),
                  );
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.7,
                        child: Row(

                          children: [
                            Icon(Icons.check_box_outline_blank,),
                            Text("Update",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),

              ],
            ),

          ),
        ),
      ),

    );
  }
}
