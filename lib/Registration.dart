import 'dart:io';
import 'package:code_craft/Profile.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String texting="Select your Profile image";

  File? _image;
  Future getImage() async
  {
    final imageIs=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(imageIs!=null)
      {
        _image=File(imageIs.path);
      }
    else
      {
        print('No image selected');
      }
  }

  @override
  Widget build(BuildContext context) {
    var name=TextEditingController();
    var email=TextEditingController();
    var number=TextEditingController();
    var field=TextEditingController();


    var screenHeight=MediaQuery.sizeOf(context).height;
    var screenWidth=MediaQuery.sizeOf(context).width;
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title:  Text('Code-Craft',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 35),),
            toolbarHeight: 0.08*screenHeight,
          ),
          body: SingleChildScrollView(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.blue[900],
              child: Center(
                child: Container(
                  height: 0.70*screenHeight,
                  width: 0.80*screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 0.05*screenHeight,
                        width: 0.80*screenWidth,
                        color: Colors.blue[900],
                        child: Center(child: Text('Registration',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 19),)),
                      ),
                      SizedBox(height: 0.04*screenHeight),
                       Container(
                          width: 0.70*screenWidth,
                          child: TextField(
                            controller: name,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              prefixIcon: Icon(Icons.man),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red,width: 5),
                                borderRadius: BorderRadius.circular(3)
                              ),
                              labelText: "Name"
                            ),
                          ),
                        ),
            
                      SizedBox(height: 0.04*screenHeight),
                      Container(
                        width: 0.70*screenWidth,
                        child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red,width: 5),
                                  borderRadius: BorderRadius.circular(3)
                              ),
                              labelText: "Email"
                          ),
                        ),
                      ),
            
                      SizedBox(height: 0.04*screenHeight),
                      Container(
                        width: 0.70*screenWidth,
                        child: TextField(
                          controller: number,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Mobile No.',
                              prefixIcon: Icon(Icons.numbers_outlined),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red,width: 5),
                                  borderRadius: BorderRadius.circular(3)
                              ),
                              labelText: "Mobile No"
                          ),
                        ),
                      ),
            
                      SizedBox(height: 0.04*screenHeight),
                      Container(
                        width: 0.70*screenWidth,
                        child: TextField(
                          controller: field,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Field',
                              prefixIcon: Icon(Icons.work),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red,width: 5),
                                  borderRadius: BorderRadius.circular(3)
                              ),
                              labelText: "Field"
                          ),
                        ),
                      ),
                      SizedBox(height: 0.04*screenHeight),
            
                      Container(
                        height: 0.05*screenHeight,
                        width: 0.80*screenWidth,
                        child: Row(
            
                          children: [
                            SizedBox(width: 0.07*screenWidth,),
                            Column(
                              children: [
                              Text(texting,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 15),)
            
                              ],
                            ),
                            SizedBox(width: 0.02*screenWidth,),
                            Column(
                              children: [
                                Container(height:0.05*screenHeight,width:0.05*screenHeight,child:IconButton(onPressed: (){
                                   getImage();
                                }, icon: Icon(Icons.upload_file,),))
                              ],
                            ),
                          ],
                        ),
                      ),
            
                      SizedBox(height: 0.02*screenHeight),
            
                      Container(
                        height: 0.05*screenHeight,
                        width: 0.18*screenWidth,
                        child: FloatingActionButton(onPressed: (){
                          if (_image == null) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  content: Container(
                                    width: 50, // Set your desired width
                                    height: 30, // Set your desired height
                                    child: Center(
                                      child: Text(
                                        'Image Not selected',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    IconButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, icon: Icon(Icons.close),)
                                  ],
                                );
                              },
                            );
                          }

                          else {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  Profile(name: name.text,
                                    email: email.text,
                                    number: number.text,
                                    field: field.text,
                                    image_: _image,),));
                          } },backgroundColor: Colors.red,child: Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 15)),),
                      )
                    ],
                  ),
                ),
              )
            ),
          ),
        ),
        );
  }
}