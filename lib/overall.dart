import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class Overall extends StatefulWidget {
  const Overall({Key? key}) : super(key: key);

  @override
  _OverallState createState() => _OverallState();
}

class _OverallState extends State<Overall> {
  List overall=[
    {
      "heading": "Flutter architectural overview",
      "content": "This article is intended to provide a high-level overview of the architecture of Flutter, including the core principles and concepts that form its design.\n\nFlutter is a cross-platform UI toolkit that is designed to allow code reuse across operating systems such as iOS and Android, while also allowing applications to interface directly with underlying platform services. The goal is to enable developers to deliver high-performance apps that feel natural on different platforms, embracing differences where they exist while sharing as much code as possible.\n\nDuring development, Flutter apps run in a VM that offers stateful hot reload of changes without needing a full recompile. For release, Flutter apps are compiled directly to machine code, whether Intel x64 or ARM instructions, or to JavaScript if targeting the web. The framework is open source, with a permissive BSD license, and has a thriving ecosystem of third-party packages that supplement the core library functionality.\n\nThis overview is divided into a number of sections:\n\nThe layer model: The pieces from which Flutter is constructed.\nReactive user interfaces: A core concept for Flutter user interface development.\nAn introduction to widgets: The fundamental building blocks of Flutter user interfaces.\nThe rendering process: How Flutter turns UI code into pixels.\nAn overview of the platform embedders: The code that lets mobile and desktop OSes execute Flutter apps.\nIntegrating Flutter with other code: Information about different techniques available to Flutter apps.\nSupport for the web: Concluding remarks about the characteristics of Flutter in a browser environment.\n",
      "imageshow": "False",
      "image": ""
    },
    {
      "heading": "Reactive user interfaces",
      "content": "On the surface, Flutter is a reactive, pseudo-declarative UI framework, in which the developer provides a mapping from application state to interface state, and the framework takes on the task of updating the interface at runtime when the application state changes. This model is inspired by work that came from Facebook for their own React framework, which includes a rethinking of many traditional design principles.\n\nIn most traditional UI frameworks, the user interface’s initial state is described once and then separately updated by user code at runtime, in response to events. One challenge of this approach is that, as the application grows in complexity, the developer needs to be aware of how state changes cascade throughout the entire UI. For example, consider the following UI:",
      "imageshow": "False",
      "image": ""
    },
    {
      "heading": "",
      "content": "There are many places where the state can be changed: the color box, the hue slider, the radio buttons. As the user interacts with the UI, changes must be reflected in every other place. Worse, unless care is taken, a minor change to one part of the user interface can cause ripple effects to seemingly unrelated pieces of code.\n\nOne solution to this is an approach like MVC, where you push data changes to the model via the controller, and then the model pushes the new state to the view via the controller. However, this also is problematic, since creating and updating UI elements are two separate steps that can easily get out of sync.\n\nFlutter, along with other reactive frameworks, takes an alternative approach to this problem, by explicitly decoupling the user interface from its underlying state. With React-style APIs, you only create the UI description, and the framework takes care of using that one configuration to both create and/or update the user interface as appropriate.\n\nIn Flutter, widgets (akin to components in React) are represented by immutable classes that are used to configure a tree of objects. These widgets are used to manage a separate tree of objects for layout, which is then used to manage a separate tree of objects for compositing. Flutter is, at its core, a series of mechanisms for efficiently walking the modified parts of trees, converting trees of objects into lower-level trees of objects, and propagating changes across these trees.",
      "imageshow": "False",
      "image": ""
    },
    {
      "heading": "Building widgets",
      "content": "As mentioned earlier, you determine the visual representation of a widget by overriding the build() function to return a new element tree. This tree represents the widget’s part of the user interface in more concrete terms. For example, a toolbar widget might have a build function that returns a horizontal layout of some text and various buttons. As needed, the framework recursively asks each widget to build until the tree is entirely described by concrete renderable objects. The framework then stitches together the renderable objects into a renderable object tree.\n\nA widget’s build function should be free of side effects. Whenever the function is asked to build, the widget should return a new tree of widgets1, regardless of what the widget previously returned. The framework does the heavy lifting work to determine which build methods need to be called based on the render object tree (described in more detail later). More information about this process can be found in the Inside Flutter topic.\n\nOn each rendered frame, Flutter can recreate just the parts of the UI where the state has changed by calling that widget’s build() method. Therefore it is important that build methods should return quickly, and heavy computational work should be done in some asynchronous manner and then stored as part of the state to be used by a build method.\n\nWhile relatively naïve in approach, this automated comparison is quite effective, enabling high-performance, interactive apps. And, the design of the build function simplifies your code by focusing on declaring what a widget is made of, rather than the complexities of updating the user interface from one state to another.\n\n",
      "imageshow": "False",
      "image": ""
    },
    {
      "heading": "Widget state",
      "content": "The framework introduces two major classes of widget: stateful and stateless widgets.\n\nMany widgets have no mutable state: they don’t have any properties that change over time (for example, an icon or a label). These widgets subclass StatelessWidget.\n\nHowever, if the unique characteristics of a widget need to change based on user interaction or other factors, that widget is stateful. For example, if a widget has a counter that increments whenever the user taps a button, then the value of the counter is the state for that widget. When that value changes, the widget needs to be rebuilt to update its part of the UI. These widgets subclass StatefulWidget, and (because the widget itself is immutable) they store mutable state in a separate class that subclasses State. StatefulWidgets don’t have a build method; instead, their user interface is built through their State object.\n\nWhenever you mutate a State object (for example, by incrementing the counter), you must call setState() to signal the framework to update the user interface by calling the State’s build method again.\n\nHaving separate state and widget objects lets other widgets treat both stateless and stateful widgets in exactly the same way, without being concerned about losing state. Instead of needing to hold on to a child to preserve its state, the parent can create a new instance of the child at any time without losing the child’s persistent state. The framework does all the work of finding and reusing existing state objects when appropriate.\n\n",
      "imageshow": "False",
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
            "Flutter",
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
              itemCount: overall.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(overall[index]["heading"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(overall[index]["content"].toString(),style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      overall[index]["imageshow"]==true?
                      Image.network(overall[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
