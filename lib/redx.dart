import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class RedxHome extends StatefulWidget {
  const RedxHome({Key? key}) : super(key: key);

  @override
  _RedxHomeState createState() => _RedxHomeState();
}

class _RedxHomeState extends State<RedxHome> {
  List redx=[
    {
      "heading": "",
      "content": "There is always a transfer of data within a class or across multiple classes in any typical application, including Flutter apps. A class or function generates data to consume, either within itself or by another class or function. Data is most likely passed from one widget to another through the constructor.\n\nSometimes, you may have to pass data across several layers of widgets before it finally gets to its destination widget. In such instances, the layers of widgets in between do not need this data, but rather serve as tools to transfer the data to the widget that needs it.\n\nThis is a very inefficient technique of managing data within your application, especially on a large scale. It leads to a large amount of boilerplate code and could lead to a performance lapse on your application.\n\nThis article will explore Flutter application state management and some of its techniques. We’ll also dive into how we can efficiently manage data in our Flutter application using Redux.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "What is Redux?",
      "content": "Redux is a state management architecture library that successfully distributes data across widgets in a repetitive manner. It manages the state of an application through a unidirectional flow of data. Let’s explore the diagram below:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1X759dBZvIlgX1dc8cqJAz4olKt-OcqCx"
    },
    {
      "heading": "",
      "content": "In this example, data generated in the main widget is needed in sub-widget 8. Ordinarily, this data passes through sub-widget 2 to sub-widget 6 and then, finally, it reaches sub-widget 8. This is also the case for widgets that need data generated or saved in the state of any widget that’s higher up in the hierarchy.\n\nWith Redux, you can structure your application so that the state is extracted in a centrally-located store. The data in this centralized store can be accessed by any widget that requires the data, without needing to pass through a chain of other widgets in the tree.\n\nAny widget that needs to add, modify, or retrieve the data in a state managed by the Redux store would have to request it with the appropriate arguments.\n\nLikewise, for every change made to the state, the dependent widgets respond to the change either through the user interface or any other configured means.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1VtJXdC7x-BG7XW9xDmDPAsUrf_r6dzfS"
    },
    {
      "heading": "Why is state management important?",
      "content": "In a medium or large-scale application with many widgets, when a child widget needs data, it is common to manage the data from the main.dart file.\n\nThis data could be distributed through the constructors of widgets as arguments until the data gets to the recipient widget, but as we discussed in the intro, this could lead to a long chain of data transfer through widgets that don’t need this data.\n\nNot only can it be cumbersome and difficult to pass data through the constructors, it can also affect the performance of an application. This is because when you manage data from the main widget — or any root widget — the entire widget tree rebuilds whenever a change occurs in any of its child widgets. You only want to run the build method in the widget that requires the changed data.",
      "imageshow": false,
      "image": ""
    },

    {
      "heading": "Redux as a single source of truth",
      "content": "There should be only one store of information across your application. This not only helps with debugging, but each time data changes within your application, you are more easily able to detect where and why it has changed.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Immutability",
      "content": "The state of your application should be immutable and accessed only by reading it. Part of this means that if you want to change a value inside a state, you have to completely replace the state with a new state that contains your new values.\n\nThis helps to secure the store and allow a change in state only by actions. It also enables transparency within the application because you can always detect the cause of changes to the state and the objects responsible for these changes.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Functions should be the state changers",
      "content": "Changes to the state should occur only by functions. These functions, known as reducers, are the only entities allowed to make changes to the state of your application.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1CATWg8ZRw-J6HrNVyFkY_QEwkkZ02xY0"
    },
    {
      "heading": "",
      "content": "In the code above, AppState is an immutable class that holds the state of the value variable.\n\nThe actions permitted in the state are Add and Subtract.\n\nModifications to the state are done through the reducer function, which receives the state, and the action carried out on the state.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "How do changes in state affect the UI?",
      "content": "Updates made to the state reflect on the UI — each time the state updates, it triggers the logic that rebuilds the UI within the StoreConnector widget, which rebuilds the widget tree with every change in the state.Let’s say there is a pop-up on the screen that requires a user response in the form of clicking or tapping a button. We’ll regard this pop-up as the View in our diagram above.\n\nThe effect of clicking the button is the Action. This action is wrapped and sent to the Reducer, which processes the action and updates the data in the Store. The store then holds the State of the application, and the state detects this change in the value of the data.\n\nSince the data rendered on your screen is managed by the state, this change in data is reflected in the View and the cycle continues.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1AU-AzosLMcrR0ZTpZI8eheJ8giE2UnuU"
    },
    {
      "heading": "Redux Middleware",
      "content": "Middleware is a Redux component that processes an action before the reducer function receives it. It receives the state of the application and the dispatched action, then performs customized behaviors with the action.\n\nLet’s say you want to perform an asynchronous operation, such as loading data from an external API. Middleware intercepts the action, then conducts the asynchronous tasks and logs any side effects that may have occurred or any other custom behavior displayed.\n\nThis is what a Redux flow looks like with the middleware:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1UjL1XoNM4NhLfSV2BekOv3BmgDfeiGGd"
    },
    {
      "heading": "Flutter Redux dependencies",
      "content": "Run the command on your terminal:Add the following dependencies to your pubspec.yaml file, then run flutter pub get.\n\nRedux: contains and provides the fundamental tools required to use Redux in Flutter applications, including:\nThe store that will be used to define the initial state of the store\nThe reducer function\nThe middleware\nflutter_redux: a complement to the Redux package, this installs an additional set of utility widgets, including:\nStoreProvider\nStoreBuilder\nStoreConnector\nflutter_redux_dev_tools: This package functions like the Flutter Redux package, but contains more tools that you can use to track the changes in the state and actions involved\nredux_thunk: for middleware injection\nhttp: enables the external API call through the middleware\nIntl: enables formatting of the time data received from the API",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1boJDmEN4wwokcYabAXpg2e6b188hhBQ2"
    },
    {
      "heading": "",
      "content": "Next, add the following code for AppState:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1YPGzz36ESPxqpXMblQPzcY8KXYcMCmKx"
    },
    {
      "heading": "",
      "content": "Next, we’ll write our action class, FetchTimeAction:The action class also has the same fields as the AppState. We will use the values in the fields to update the state when this action is called.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1clSdYGmXCmCaIFpuuFmeeVVscRWRiQil"
    },{
      "heading": "",
      "content": "Now we’ll write the AppState reducer function:The reducer function receives the state and the action. If the action is a FetchTimeAction, it returns a new state using the values in the action fields. Otherwise, it returns to the previous state.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1hYXjYFwmpI43C-xafY-n8ruPz67EnNUH"
    },
    {
      "heading": "",
      "content": "The code for the middleware is as follows:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1qJl17d-Y5TP7RJVVswlqPwbuTbxzhVl7"
    },
    {
      "heading": "",
      "content": "fetchTime is an asynchronous function that receives the store as its only argument. In this function, we make an asynchronous request to the API to fetch the list of locations available.\n\nThen we used the Dart Random() function to select a random location in the list and make another asynchronous request to fetch the time for the selected location. We also formatted the date and location values received from the API to suit our application.\n\nFinally, we dispatched a FetchTimeAction to the store so we could update the new state.\n\nNow, let’s build the rest of our app:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1CoAeCdu4EiZ_IzenWHsXDKqJHOB0ZmaR"
    }, {
      "heading": "",
      "content": "We begin by assigning an instance of the Store<AppState>. Then, we wrap the MaterialApp in StoreProvider<AppState>. This is because it is a base widget that will pass the given Redux store to all descendants that request it.\n\nThe Text widget that renders the location and time is one of the descendent widgets that depends on the store, so we wrap it in a StoreConnector to enable communication between the store and this widget.\n\nThe RaisedButton widget is the second widget that depends on the store. We also wrap it in the StoreConnector. Every click triggers the middleware to run its function and thereby update the state of the application.",
      "imageshow": false,
      "image": ""
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
            'ReduX',
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
              itemCount: redx.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(redx[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(redx[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      redx[index]["imageshow"]==true?
                      Image.network(redx[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
