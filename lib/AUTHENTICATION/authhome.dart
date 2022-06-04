import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  List auth=[
    {
      "heading": "",
      "content": "Social authentication is an authentication technique in which one uses an existing account to log into or create a new account in another application. Besides levying a user on constantly remembering multiple passwords, social authentication eases the registration process and improves security.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Introduction",
      "content": "Google provides a platform for integrating social authentication with Firebase. A programmer only needs to generate an SHA1 key and configure it with his/her machine.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Goal",
      "content": "This article aims to guide the readers through a step-by-step understanding and implementation of social authentication in Flutter while narrowing it down to Google and Facebook.\n\nWe will build an authentication project in Flutter and implement social authentication using Facebook and Google. In the end, a user should be able to login into the application by choosing either of the two from the login screen.",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Adding login dependencies",
      "content": "We need the following dependencies for our project.\n\nfirebase_core. This dependency will allow us to connect multiple Firebase apps to our Flutter project.\nfirebase_auth. This plugin will enable us to use Firebase Authentication API.\nflutter_login_facebook. To call Facebook login SDK on Android and IOS.\ngoogle_sign_in. To enable login with Google.\nAdd the snippets below in the pubspec.yaml.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1JNTIixx8GOJAhCWUroKa60vgarLw-FqQ"
    },
    {
      "heading": "Firebase configuration",
      "content": "Firebase is used as our database and to provide the Authentication API as well.\n\nCreate a new Firebase project if you don’t have one yet. You can follow this guide for the creation process.\nUnder the project, select authentication, then enable Facebook and Google.\nFor the case of Facebook. We need APP_ID and APP_SECRET. We can obtain these from Facebook Developer Console.\nHead over to Facebook Developer Console.\nClick on My Apps.\nClick the Create App button.\nSelect Business then continue.\nEnter your App Name, Contact Email and App Purpose then, continue to create the app.\nIn the dashboard, click basic under settings. You will be redirected to a page showing the App_ID` and secret as shown below.Copy the App_id and Secret then, paste to the fields we left empty on the Facebook sign-in method.\nCopy the OAuth redirect URI we need to set up our app with Facebook. OAuth redirect URI",
      "imageshow": false,
      "image": ""
    },
    {
      "heading": "Setting up Facebook Auth",
      "content": "In the Facebook console, head over to the dashboard.\nClick setup Facebook login.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=13DVGdxWbe_fmnzD_iNKRByZSQuks0k-r"
    },
    {
      "heading": "",
      "content": "On the next page, select Android.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1quSzmDF5xoxnt0xp-hfBtJHKU2oyMyvY"
    },
    {
      "heading": "",
      "content": "In your AndroidManifest file, copy the package name of your app and paste it into the package name field.\nFor the default activity name, use youp_packagename.MainActivity.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1FY3fRO0Z9OcGk0LOVwvxePLIWjIMzPr5"
    },
    {
      "heading": "",
      "content": "We need to generate a Development Key Hash. Paste the command below in your terminal:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1thk29xXv_IlwLC7XaHWe1uXqMBOAKtA3"
    },
    {
      "heading": "",
      "content": "This generates a key hash unique to your development environment. Copy and paste it into the key hashes field. Save then continue.\nThe last thing to do is to add the OAuth redirect URI copied from the Firebase console. From the left sidebar menu, select Facebook login then, settings, paste the copied text into the Valid OAuth Redirect URIs field.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1KzQBGCnb_DhYst27Mr9d4r5DVpI6oO4y"
    },
    {
      "heading": "",
      "content": "Setting up the AndroidManifest.xml File\nNavigate to /app/res/values then create a string resource file named strings.xml.\n\nAdd the snippets below into that file.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1_S_AilxxnoAIQxalWiOaJrCLJfSJMW5c"
    },
    {
      "heading": "",
      "content": "Next, head to /app/manifest/AndroidManifest.xml then enable internet permission by adding the snippets below after the application element.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1t90hsHL2VzCBqRbHV2Nsqy8jFTF0pYaF"
    },
    {
      "heading": "Facebook public profile access",
      "content": "In the developer’s console dashboard, go to App review.\nUnder Permissions and Features request advanced access for the public profile.\nYour app should now be able to access a Facebook profile.\nAccess for the public profile.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=15Yt2PLotZx4fiR9IOOLAEk77Sb0o-ql_"
    },
    {
      "heading": "Creating the Auth service providers",
      "content": "Import the dependencies\nIn the authService.dart file, add the following block of code to import the dependencies for the application.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1pMk3oNsyBPjStKlBSl5x3hgtMnICNqPG"
    },
    {
      "heading": "Creating the Auth Service class",
      "content": "We will create a class of the following functions:\n\nhandlingAuthStatus(): This function checks the authentication status of a user and redirects them to either loginScreen or homeScreen.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1nnD9xgi76WzRzpwrTsj9mbbPEykJxF6c"
    },
    {
      "heading": "",
      "content": "SignInWithFacebook(). This function enables a user to be authenticated with the Facebook authentication API.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1nnD9xgi76WzRzpwrTsj9mbbPEykJxF6c"
    },
    {
      "heading": "",
      "content": "signInWithGoogle(). Provides the login to use an existing Google account for authentication.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1JHwWPZYGCEnmWq0jx6NLP3xwmvvU0sgr"
    },
    {
      "heading": "",
      "content": "signOut(). This function enables a logged-in user to log out and gets redirected to the loginScreen.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1C2qsvF7RAfzJjIaP7I8-1oGnMaalmxEw"
    },
    {
      "heading": "Coding the app entry point",
      "content": "The app entry point is the main.dart. In this file we will call the handleAuthState() to determine if a user is authenticated or not.\n\nAdd the snippets below to the main.dart file:",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1rQWW1JkQPToHrtYOChfFU3HrcLvg94d5"
    },
    {
      "heading": "Login screen",
      "content": "Add the snippets below to the logingScreen.dart file under the scaffold class:\n\nImport Packages",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1mcBPOoOYNSgH5CqpewUmbyBXYpNOzcQs"
    },
    {
      "heading": "Social login icons",
      "content": "",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1_x5EII3osxyhqcQKLePpJ66K4ely4tB4"
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
            'Authentication',
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
              itemCount: auth.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(auth[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(auth[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),
                      auth[index]["imageshow"]==true?
                      Image.network(auth[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
