import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class CryptoPackage extends StatefulWidget {
  const CryptoPackage({Key? key}) : super(key: key);

  @override
  _CryptoPackageState createState() => _CryptoPackageState();
}

class _CryptoPackageState extends State<CryptoPackage> {
  List crypto=[
    {
      "heading": "",
      "content": "When you complete this operation, you can be going easily sleep. These steps enough for private data. If you want more powerful encryption, you have to need a server-side solution with your backend service.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1Joi8GJwx2FSPDd0W0v00jETe9tsF7obP"
    },
    {
      "heading": "Encrypt And Caching",
      "content": "We prepared the main steps for now. Let’s write encrypt operation in-app. I planed some features so I will add them to the end of the page.\nWe will see the power in testing so that we know all features. Now only write to app lifecycles.\nI create IItemCache interface so that we take a power unit test both clean code.",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1EcvnoZ8SpE2BCSDKheJgeyQi0E_0ASDF"
    },
    {
      "heading": "Usage",
      "content": "AES",
      "imageshow": true,
      "image": "https://drive.google.com/uc?export=view&id=1rrR8dR5nwn_O_xNmTjoE8ndIJ6c4uPDI"
    },
    {
      "heading": "No/zero padding",
      "content": "To remove padding, pass null to the padding named parameter on the constructor:",
      "imageshow": false,
      "image": "https://drive.google.com/uc?export=view&id=1Fdgv0nl7dz3HeVs_XNKeUoo_tUGWNA_9"
    },{
      "heading": "Code",
      "content": "To remove padding, pass null to the padding named parameter on the constructor:",
      "imageshow": false,
      "image": "https://drive.google.com/uc?export=view&id=1ylVW96kVJe-GZ9OQH7dlOhLtyi8P3yWp"
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
            'Package',
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
              itemCount: crypto.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(crypto[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),





                      Container(child: Text(crypto[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),

                      crypto[index]["imageshow"]==true?
                      Image.network(crypto[index]["image"]):Container()

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
