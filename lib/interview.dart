import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


import 'CONST/color.dart';
import 'interview/form_controller.dart';
import 'interview/model.dart';




class Interview extends StatefulWidget {
  const Interview({Key? key}) : super(key: key);

  @override
  _InterviewState createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {


  List<FeedbackForm> feedbackItems = <FeedbackForm>[];

  // Method to Submit Feedback and save it in Google Sheets

  @override
  void initState() {
    super.initState();


    FormController().getFeedbackList().then((feedbackItems) {
      setState(() {
        this.feedbackItems = feedbackItems;
      });
    });
  }

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
            'Interview',
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
      body:  Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: feedbackItems.length,
              itemBuilder: (BuildContext context, int index) {
                print(feedbackItems[index].imageshow);
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(child: Text(feedbackItems[index].questions,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(feedbackItems[index].answer,style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),

                      feedbackItems[index].imageshow=="true"?
                      Image.network(feedbackItems[index].image)
                          :Container()

                    ],
                  ),
                );}),

        ),
      ),
    );
  }
}