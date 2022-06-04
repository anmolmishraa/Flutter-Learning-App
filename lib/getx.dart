import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'CONST/color.dart';
class Getx extends StatefulWidget {
  const Getx({Key? key}) : super(key: key);

  @override
  _GetxState createState() => _GetxState();
}

class _GetxState extends State<Getx> {
  List getx=[
    {
      "heading": "The Flutter GetX State Management",
      "content": "Flutter is without a doubt the best framework for developing cross-platform applications. Application development with Flutter is truly awesome and easy because it provides a rich set of customizable widgets. However, some state management options won't allow you to feel the true power of the flutter framework, since you have to waste your development time to implement unnecessary boilerplate. When I started to learn the Bloc pattern, I was confused by the bloc concepts. It was difficult to understand. On the other hand, the provider is easy to understand, but we have to be very careful when avoiding the unnecessary rebuilds. Since It directly affects your application's performance. However, all the state management options have their pros and cons.\n\nGetX has a different philosophy. It wants to manage your application state in a simple and well organized fashion while improving performance. So let’s see how GetX has achieved it.\n\nIn the article, I will discuss,\n\nWhy is GetX so special?\nState management using GetX\nGetxController\nThe Reactive State Manager in GetX\nThe Simple State Manager in GetX\nMixinBuilder : Mix your both state managers\nStateMixin",
      "imageshow": false,
      "image": ""
    },{
      "heading": "Why is GetX so special?",
      "content": "GetX is more than just a state management library. It is, in fact, a small flutter framework capable of handling route management and dependency injection in flutter applications. But in this article, I will only discuss its state management capabilities.\nGetX is a very lightweight and powerful state management solution for flutter. So why is GetX so superior?",
      "imageshow": false,
      "image": ""
    }, {
      "heading": "High performance",
      "content": "GetX uses fewer resources as possible. It does not depend on Streams or ChangeNotifier. Instead, it uses low latency GetValue and GetStream to improve performance.",
      "imageshow": false,
      "image": ""
    },{
      "heading": "Less code",
      "content": "You may be tired of implementing boilerplate in the bloc pattern and waste development time on unnecessary codes. Time is money, right? In GetX, you are not going to write any boilerplate. You can achieve the same thing much faster, with less code in GetX. No need to create classes for the state and event, since these boilerplates do not exist in GetX.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "No code generation:",
      "content": " There is no need to use code generators at all. So your valuable development time is not going to waste any more on running code generators(build_runner) every single time when you change your code. cool right?",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Don't worry about context:",
      "content": "Your application context is very important. But sending the context from your view to the controller can be, sometimes cumbersome. In GetX, you don't need to do this. You can access controllers within another controller without any context. cool right?",
      "imageshow": false,
      "image": ""
    }, {
      "heading": "No unnecessary rebuilds:",
      "content": " Unwanted rebuilds are a problem of state managers based on ChangeNotifier. When you make a change in your ChangeNotifier class, all widgets that depend on that ChangeNotifier class are rebuilt. Some rebuilds may be unnecessary and costly. It may also reduce the application's performance as well. You don't have to worry about this in GetX since it does not use the ChangeNotifier at all.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Code organization is simple:",
      "content": "Bloc's popularity comes from its superior code organizing capabilities. It makes it easier to separate your business logic from the presentation layer. GetX is a natural evolution for this as official documentation says. In GetX, you can separate not just the business logic but also the presentation layer. Powerful right?\n\nSo, what do you think about GetX? Can I say superior for it? I think I can.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "State management using GetX",
      "content": "GetX provides two kinds of state managers: The reactive state manager and the simple state manager. If you have used Bloc before, then you should have some experience in reactive programming. In GetX, you can have far more superior and easier reactive experience, unlike Bloc. The simple state manager is just like using setState in StatefulWidget, but in a cleaner way. Before discussing these two state managers, it is essential to know about GetxController in GetX.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "GetxController",
      "content": "Your controllers contain all of your business logic. GetX has an important class called GetxController. It is useful to enable reactive and simple state manager functionality in your controllers. All you have to do is to extend your controllers from GetxController.\n\nLet's take a simple example from your shopping app.You can completely remove StatefulWidget by using GetxController. Since GetxController has onInit() and onClose() methods. So you can replace initState() and dispose() methods in StatefulWidget. Pretty clever right? When your controller is created in memory, the onInit() method is called immediately, and the onClose() method is called when it is removed from memory.\n\n\n\n\nYou can also use the onReady() method in GetxController. The onReady() method will be called soon after the widget has been rendered on the screen.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "GetxController",
      "content": "Your controllers contain all of your business logic. GetX has an important class called GetxController. It is useful to enable reactive and simple state manager functionality in your controllers. All you have to do is to extend your controllers from GetxController.\n\nLet's take a simple example from your shopping app.You can completely remove StatefulWidget by using GetxController. Since GetxController has onInit() and onClose() methods. So you can replace initState() and dispose() methods in StatefulWidget. Pretty clever right? When your controller is created in memory, the onInit() method is called immediately, and the onClose() method is called when it is removed from memory.\n\n\n\n\nYou can also use the onReady() method in GetxController. The onReady() method will be called soon after the widget has been rendered on the screen.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1GtSWye1xsTT1FdaibwBNR7hxWyDS-aEv"
    }, {
      "heading": "The Reactive State Manager in GetX",
      "content": "The reactive state manager implements reactive programming in an easier and cleaner way. You may have used StreamContollers and StreamBuilder in your reactive programming approaches. But in GetX, you won't need to create such things. Furthermore, unlike Bloc, there is no need to create separate classes for each state. You can remove these boilerplates and do the same thing with just a few lines of code using Getx.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Create Reactive Variables",
      "content": "In the Reactive approach of GetX, first you need to create observable variables(reactive variables). In simple terms, your widgets can watch changes of your variables. And widgets can update their UI according to these changes in variables. There are three different ways to create reactive variables.",
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
            'GetX',
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
              itemCount: getx.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(getx[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(getx[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      getx[index]["imageshow"]==true?
                      Image.network(getx[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
