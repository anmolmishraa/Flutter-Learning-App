import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Sliderwidget extends StatefulWidget {
  const Sliderwidget({Key? key}) : super(key: key);

  @override
  _SliderwidgetState createState() => _SliderwidgetState();
}

class _SliderwidgetState extends State<Sliderwidget> {
  List slider=[
    {
      "heading": "Slider",
      "content": "A slider in Flutter is a material design widget used for selecting a range of values. It is an input widget where we can set a range of values by dragging or pressing on the desired position. In this article, we are going to show how to use the slider widget in Flutter in setting the range of values and how to customize the look of a slider.\n\nUsually, we use the slider widget for changing a value. So, it is required to store the value in a variable. This widget has a slider class that requires the onChanged() function. This function will be called whenever we change the slider position.\nA slider can be used for selecting a value from a continuous or discrete set of values. By default, it uses a continuous range of values. If we want to use discrete values, we must have to use a non-null value for divisions. This discrete division indicates the number of discrete intervals. Before getting the value, we have to set the minimum and maximum value. Slider provides min and max arguments to set the minimum and maximum limitations. For example, we have a set of values from 0.0 to 50.0, and divisions are 10, the slider would take values like 0.0, 10.0, 20.0, 30.0, 40.0, and 50.0.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Slider Properties",
      "content": "The following are the slider attributes used in Flutter. It has two required arguments, and all others are optional.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1eVCJA2JqLWzDAdgI_u8jafXh_aVpeEkB"
    },
    {
      "heading": "Example",
      "content": "Let us understand how to use the slider in Flutter with the help of an example. In the following code, we had stored the value as an integer that must be cast to double first when it passed as a value argument and then rounded to integer inside the onChanged method. We have also specified the active portion of the slider as green, while the inactive portion is orange.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1nDUeBkBiepsMnwH7Vbe_WFKvMisIC-K9"
    },
    {
      "heading": "",
     "content":"",
       "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=10z22nNrOVWhF59YKYb5CRuVENXgweaAj"
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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: slider.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(slider[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(slider[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      slider[index]["imageshow"]==true?
                      Image.network(slider[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),
    );
  }
}
