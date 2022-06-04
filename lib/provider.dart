import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class Provider extends StatefulWidget {
  const Provider({Key? key}) : super(key: key);

  @override
  _ProviderState createState() => _ProviderState();
}

class _ProviderState extends State<Provider> {
  List pro=[
    {
      "heading": "What is Provider?",
      "content": "Provider can be somewhat difficult to explain. The package author, Remi, has described it as a mix between State Management and Dependency Injection. At his talk at Flutter Europe in 2019, he quoted another Flutter community usual, Scott Stoll, who called is 'Inherited Widgets for humans'. I think this is the most straight-forward explanation.\n\nI also find it difficult to find an explanation on the interwebs that includes an easy to grok example. If you want to use provider effectively, you're left to tinkering or reading the source code. I will attempt to fill that void here.\n\nIn a nutshell, Provider gives us an easy, low boiler-plate way to separate business logic from our widgets in apps. Because it's built on InheritedWidget classes, it also makes it easy to re-use and re-factor business logic. Separating state from your UI is one of the main problems that Provider solves.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "What does Provider do for me?",
      "content": "It can be used in a variety of ways in your Flutter app. It can be used in-lieu of more robust state-management libraries, or along side them. It can be used with InheritedWidgets and StatefulWidgets, or again, in place of them. It \"does\" two jobs:\n\nSeparates your state from your UI\nManages rebuilding UI based on state changes\nWhich makes loads of things simpler, from reasoning about state, to testing to refactoring. It makes your codebase scalable.\n\nConsider this widget tree that uses no libraries at all:\n\nThis widget tree is an extremely crude version of the Counter app we all know and love. It passes a callback (onPressed) to a FloatingActionButton and a counter property down a text widget. When onPressed is fired, it updates the counter.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1niNwIEyTbIWvLwONmaNUn7b4jrKV3VRB"
    },
    {
      "heading": "",
      "content": "That's fine, but what happens when you need to refactor your code? What happens if state is shared between different widgets? And what about testing? Your logic is sprinkled throughout your app, and tied to your widgets. This makes writing tests a pain, verbose, and hard to refactor.\n\nImagine for a moment that you decided you no longer wanted a FloatingActionButton, and you wanted a button, as a child of the column, to trigger onPressed. That refactor would be a pain.\n\n(I know my drawing... err... leaves a lot to be desired. But the gist is that all of the pink text is what would have to be refactored.)",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Is provider a State Management library?",
      "content": "In my opinion, no. But it can be.\n\nUnlike libraries like Redux and Bloc, Provider simply provides tools to 'wire up' our UI to business logic, and it is not opinionated in how you manage state. Because of this, it's almost easier to look at it as Flutter-specific dependency injection library (and that's what it was originally advertised as). In fact, the Bloc library is built on top of provider, because provider, again, doesn't really manage state for you.\n\nProvider helps make your widgets as 'dumb' as possible by separating logic from the widgets, and injecting the important data to those widgets. If you're building an e-commerce app, you can build a cart page that knows it should display some items in a cart. But, using provider, the widget has no concept of what those items are, nor is it responsible for keeping track of the cart contents. Rather, there would be a separate class elsewhere in your app, perhaps called Cart, that manages all the logic. And, whenever a new item is added the the cart, the widget that displays the cart item is told to re-render with the new items.\n\nIf this seems hand-wavy and obtuse, the examples on the following pages should help make this more concrete (as well as show you what you really want: how to use provider with real life code).\n\nBut lastly, I need to point out a few important points to remember while using provider:\n\nProvider is built using widgets. It literally creates new widget subclasses, allowing you to use all the objects in provider as if they're just part of Flutter. This also means that provider is not cross platform. (By cross platform, I mean outside of a Flutter project. i.e. AngularDart)\nSeparating this business logic makes your code much easier to test and maintain.\nAgain, Provider is not opinionated about state management. It is not going to force consistency like Redux would.\nThe remainder of this tutorial will walk through the usage of Provider by walking through how you'd use most of the different classes in Provider.",
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
            'Provider',
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
              itemCount: pro.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(pro[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(pro[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      pro[index]["imageshow"]==true?
                      Image.network(pro[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
