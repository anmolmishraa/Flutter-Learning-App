import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class DateTimePickersWidget extends StatefulWidget {
  const DateTimePickersWidget({Key? key}) : super(key: key);

  @override
  _DateTimePickersWidgetState createState() => _DateTimePickersWidgetState();
}

class _DateTimePickersWidgetState extends State<DateTimePickersWidget> {
  List DT=[

    {
      "heading": "Date&Time Picker",
      "content": "In this article, we will learn about a simple way to display either date, or time, or Date&amp;Time Picker Widget using library datetime_picker_formfield: ^0.1.8  along with how to get the date value and setting initial value.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Dependencies :",
      "content": "There is a package that allows us to easily create either DateTime, date, or time input. At the following to pubspec.yaml and run Get Packages.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "datetime_picker_formfield: ^0.1.8",
      "content": "",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Example :",
      "content": "The datetime_picker_formfield has DateTimePickerFormField widget.Its inputType option is used to specify what type of input used for the widget instance.\n\nThere are three options available as listed below:\n InputType.both: Display date and time input.\n 2. InputType.date: Display date only input.\n 3. InputType.time: Display time only input. \n\n format option whose value is of DateFormat type is used to determine how the date value is formatted – it will be displayed on the input field if the user has picked a date or time.Users can also use decoration options to customize the input look, such as adding placeholders.\n\nThe date value is stored as a variable. Whenever the user changes the value by using the picker, onChanged will be triggered. So, the most common thing you need to do inside onChanged is updating the date value. That means you can get the latest value from the variable.\nTo set the initial value, use initialDate option with DateTime instance if the input type is both (DateTime) or date, and use initialTime with TimeOfDay instance if the input type is time.\\n",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Date Picker :",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1hsTUTv7jUVqejO-WEvqkOCzpSXNtah4V"
    },
    {
      "heading": "Time Picker:",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1bIoZ1owJZ617TXMMYyQzRsTd15VFG9ql"
    },

    {
      "heading": "Complete Source Code :",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1kzAAvhzCoiwojsqQFwixAONeJ0c-r0ed"
    },

    {
      "heading": "",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1nVB1vl-G2D_JvnacuBV5V8dnv_8T4FV1"
    }




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
            'Widgets',
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
        itemCount: DT.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(child: Text(DT[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                SizedBox(height: 15,),



                Container(child: Text(DT[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                SizedBox(height: 15,),
                DT[index]["imageshow"]==true?
                Image.network(DT[index]["image"]):Container()

              ],
            ),
          );}),

  ),
),

    );
  }
}
