import 'package:code_craft/Registration.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),() => {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Registration(),))
    });
  }


  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.sizeOf(context).height;
    var screenWidth=MediaQuery.sizeOf(context).width;
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: Colors.blue[900],
          width: screenWidth,
          height: screenHeight,
          child: Center(
            child: Container(
              height: screenHeight*0.25,
              width: screenWidth*0.80,
              child: Column(
                children: [
                  Text('Welcome to',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 15),),
              Text('Code-Craft',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 25),),
                  Container(
                      height: 0.10*screenHeight,
                      width: 0.40*screenWidth,
                      child: CircleAvatar(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD9-mSIkiGdEtwuFcHhVIgWNQAMMC3axNBYA&s'),)),
                      CircularProgressIndicator(color: Colors.white,backgroundColor: Colors.black,),
                ],
              ),
            ),
          ),
          ),
      ),
    );
  }
}