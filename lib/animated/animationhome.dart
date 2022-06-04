import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class AnimHome extends StatefulWidget {
  const AnimHome({Key? key}) : super(key: key);

  @override
  _AnimHomeState createState() => _AnimHomeState();
}

class _AnimHomeState extends State<AnimHome> {
  List ani=[
    {
      "heading": "",
      "content": "Animations are straightforward to do in Flutter, and a great deal of unpredictability can be accomplished with significantly less exertion than native Android. This is generally accomplished through ways like characterizing an Animation and an AnimationController. However, there are inbuilt widgets that even diminish this and make animations as simple as basically changing values!\nAnimations assume a significant part in upgrading your application's general user experience from the visual criticism, motion, and up to the custom animations you can actually envision!. Like some other items integrated into an application, animations should be useful instead of simply a regular stylistic layout.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Table Of Contents::",
      "content": "Implicit Animation\nTypes\nProperties\nCode Implementation\nCode File\nConclusion",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Implicit Animation:",
      "content": "The implicit animation could be separated into worked-in widgets and customized widgets.ImplicitAnimtatedWidget It is an abstract class for building widgets that animate changes to their properties. Widgets of this sort won’t animate when they are first added to the widget tree. Or maybe, when they are rebuilt with various values, they will react to those progressions by animating the progressions over a predetermined duration.\n\nImplicitlyAnimatedWidgets consequently animate changes in their properties at whatever point they change. For this, they make and deal with their own inner AnimationControllers to control the animation. While these widgets are easy to utilize and don’t expect you to deal with the lifecycle of an AnimationController physically, they are likewise, to some degree, restricted: Besides the objective value for the animated property, developers can pick a duration and curve for the movement.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Common Types of Widgets:",
      "content": "Various implicitly animated widgets transport with the framework. They are typically namedAnimatedFoo where Foo is the name of the non-animated rendition of that widget. There are some regularly utilized implicitly animated widgets include:\n\nAnimatedContainer\nAnimatedOpacity\nAnimatedCrossFade\nTweenAnimationBuilder",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Common Types of Widgets:",
      "content": "There are some properties:\n\nCurve: The official document is clear and sweet in that they show all the inherent curve behaviors in videos. So on the off chance that you need to change the animation curve, pick what you need.\n\nDuration:This is a real sense that implies the duration of the animation. It very well may be days, hours, minutes, seconds, milliseconds, even microseconds.\n\nonEnd: We can accomplish something after the animation wraps up",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Code Implement:",
      "content": "Create a new dart file called home_page_screen.dart inside the lib folder.We will make four buttons on this home page screen, and each button will show implicit animation, and we will show the below detail.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "AnimatedContainer:",
      "content": "An AnimatedContainer naturally transitions to the value characterized (colors, sizes, and so on) rather than immediately changing to them.The Container the class causes you to make a widget with explicit properties, for example, height, width, color and then some. This is normally utilized for wrapping child widgets to deal with their properties, for example, sizes, paddings, and margins advantageously.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1-yli-PTEE76b0SGMjjI30iA-gWQKokvE"
    },
    {
      "heading": "",
      "content": "Utilizing the AnimatedContaineryou can animate a normal Container by changing its properties. It naturally changes the color, the sizes without you having the explicitly setting custom tweens or controllers.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1xRIOyn5I5iYAK4gHdJGuQOlljE01ozk0"
    },
    {
      "heading": "",
      "content": "We will create a floatingActionButton(). In this button, we will add the height, width, and color on the setState(). When we run the application, we ought to get the screen’s output like the underneath screen video.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "AnimatedOpacity:",
      "content": "AnimatedOpacity animates changes in opacity, for example, how noticeable a widget is. An opacity of 0 makes a widget totally transparent, while a 1 opacity is completely obvious.\nOpacity is really self-explanatory — it’s liable for refreshing the transparency of a UI part. AnimatedOpacity It is a widget on top of the default Opacity widget — it animates the progressions dependent on its opacity property.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "AnimatedOpacity:",
      "content": "AnimatedOpacity animates changes in opacity, for example, how noticeable a widget is. An opacity of 0 makes a widget totally transparent, while a 1 opacity is completely obvious.\nOpacity is really self-explanatory — it’s liable for refreshing the transparency of a UI part. AnimatedOpacity It is a widget on top of the default Opacity widget — it animates the progressions dependent on its opacity property.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1bVmjAATfMyJLm9ZZKd7Bx7CTK6RLllyS"
    },
    {
      "heading": "",
      "content": "When the button is clicked, it simply changes opacity and setsState. When we run the application, we ought to get the screen’s output like the underneath screen video.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1AG57BbBncPxcnc8lxkiWYEz8-FxjKsp-"
    },
    {
      "heading": "AnimatedCrossFade:",
      "content": "AnimatedCrossFade is smooth progress starting with one widget then onto the next with a given duration. Flutter makes this simple by utilizing an AnimatedCrossFade widget.Cross-fade animations, step by step, become fade a UI part while at the same time blurring in another UI component. The AnimatedCrossFade is a widget that gives cross-fade progress when exchanging between two given child widgets.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1nihiY_mOhtB9EIWl5BVswb32qrLKXlbm"
    }, {
      "heading": "TweenAnimationBuilder:",
      "content": "To utilize TweenAnimationBuilderI set the timeframe that I need my animation to take with the duration parameter and the range of values that I need to animate between the Tween boundary. As the name proposes, an Tween object empowers you to determine a range of values that you need to animate between./n/nThe tween also characterizes the animation's objective value: When the widget first builds, it animates from Tween. Begin to Tween. End Another animation can be set off whenever by furnishing another tween with another Tween. End value. The new animation runs from the current animation value (which might be Tween. end of the old tween, if that animation is finished) to Tween. End of the new tween.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1qaCMjzevJ-NlsfaIKx40XupLYlLOjmMR"
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
            'Animation',
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
          height: MediaQuery.of(context).size.height-120,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: ani.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(ani[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(ani[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      ani[index]["imageshow"]==true?
                      Image.network(ani[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
