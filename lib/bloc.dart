import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class BlocHome extends StatefulWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  _BlocHomeState createState() => _BlocHomeState();
}

class _BlocHomeState extends State<BlocHome> {
  List bloc=[
    {
      "heading": "The BLoC pattern",
      "content": "So what is this? BLoC stands for Business Logic Component, and a BLoC is essentially a class which keeps the state of our app/feature/screen/widget, mutates it upon receiving input events and notifying its change.\n\nUsing a BLoC to manage the state of the previous screen, our widget tree will look like this:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=15GEQPgMMt0W8-g7p7-dEMULdgQsc0KPh"
    },
    {
      "heading": "",
      "content": "The dashed lines indicate that while those widgets are not direct children of the BlocProvider they are its descendants and have access to the CounterBloc it provides.\n\nThe CounterBloc will hold and notify a state of type int and will manage an IncrementCounterEvent .\nSo now when the Button is tapped, an IncrementCounterEvent will be dispatched to the CounterBloc who will increment its counter and notify the state change to whoever is listening:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1NW8r_VGTH3zlZjevdCZUZWry_C1kmD1f"
    },
    {
      "heading": "",
      "content": "This approach has many benefits:\n\nOnce the Button has dispatched the event it won’t be necessary for the UI to know what happens next. It’s BLoC business. Moreover, CounterText and FancyCounterText do not care if the increment came from the press of a button or an accelerometer spike or a solar eclipse, and this means we can easily mock states in order to test those components.\n\nThat’s it. This is the BLoC pattern core logic in a nutshell. Now that we’ve introduced it, let’s see an example that is surely more practical and realistic than a dummy counter app",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=16GnUhAj8j-UGNz0pXwV2pz8IVyOVE8xi"
    },
    {
      "heading": "BlocProvider",
      "content": "BlocProvider is a Flutter widget(Inherited widget) which provides a bloc to its child via BlocProvider.of(context). Child widget gets updated whenever there is any change in the bloc(Business Logic Components).",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "BlocBuilder",
      "content": "BlocBuilder is a Flutter widget which requires a Bloc and a builderfunction. BlocBuilder handles building a widget in response to new states.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "How the BLoC Architecture Works",
      "content": "Before we delve into the logic of the BLoC architecture, let’s learn its main concepts\n\nEvents and actions are the inputs that appear when a user interacts with the UI: for example, swipes or scrolls\n\nStates are the reactions to these actions, and they change according to the event that a user initiates by interacting with the interface.\n\nA BLoC is a component that’s responsible for the business logic. It converts events into states and is the processing element that receives information and responds accordingly\n\nA stream is an asynchronous flow of data that the user interface (UI) and BLoC react to\n\nThe logic of the BLoC architecture is the following: when a user performs an action by interacting with the UI, the information about this action goes to the BLoC component. Then the BLoC component processes and interprets this information and responds by changing the state of the UI component.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Setup",
      "content": "The first step is to add the required plugins as a dependency in the pubspec.yaml file.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1u9GCfc24LbpZ2_VYBj6YpRYchFGnts3-"
    },
    {
      "heading": "Integrating the BLoC Architecture Step-By-Step",
      "content": "You first need to organize a Flutter app according to an architectural pattern like DDD, MVVM, or Clean. The BLoC architecture then works more like a pattern that further organizes the data flows in your app. \n\nAfter you set up your architecture, you need to integrate the BLoC element into it. ",
      "imageshow": false,
      "image": ""
    }, {
      "heading": " Add the BLoC Architecture To Your Project",
      "content": "To implement the BLoC architecture, you need to integrate the BLoC library into your project. To do this, you need to add the flutter_bloc: ^2.0.1 dependency to your pub spec.yaml file. Congrats! Now you have a Flutter package that will allow you to implement the BLoC pattern. ",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": " Set Up Widgets In the BLoC Library",
      "content": "There are three main widgets in the BLoC library: \n\nBloc\nBlocBuilder\nBlocProvider",
      "imageshow": false,
      "image": ""
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
            'Bloc',
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
              itemCount: bloc.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(bloc[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(bloc[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      bloc[index]["imageshow"]==true?
                      Image.network(bloc[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
