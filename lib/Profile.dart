import 'dart:io';

import 'package:code_craft/Registration.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String name;
  String number;
  String field;
  String email;
  File? image_;

   Profile({Key? key, required this.name,required this.email,required this.number,required this.field,required this.image_}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.sizeOf(context).height;
    var screenWidth=MediaQuery.sizeOf(context).width;
   return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Center(
              child: Container(
                width: screenWidth,
                height: 0.33*screenHeight,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                  borderRadius:BorderRadius.only(bottomLeft: Radius.circular(18),bottomRight: Radius.circular(18))
                ),
                child: Column(
                  children: [
                    Container(
                      height: 0.07*screenHeight,
                      margin: EdgeInsets.only(top: 0.02*screenHeight),
                      width: screenWidth,
                      child: ListTile(
                        leading: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Registration(),));
                        }, icon:Icon(Icons.arrow_back,color: Colors.white)),
                        trailing: Icon(Icons.settings,color:Colors.white),
                        title: Center(child: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),)),
                      ),
                    ),
                    Container(
                      height: 0.15*screenHeight,
                      width: 0.40*screenWidth,
                      margin: EdgeInsets.only(top: 0.02*screenHeight),
                      child: CircleAvatar(backgroundImage:FileImage(image_!)),
                    ),
      
                    Container(
                      height: 0.03*screenHeight,
                      width: 0.50*screenWidth,
                      child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)),
                    ),
                    
                    Container(
                      height: 0.03*screenHeight,
                      width: 0.50*screenWidth,
                      child: Center(child: Text(field,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 12),)),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: 0.80*screenWidth,
                height: 0.67*screenHeight,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0.02*screenHeight),
                      height: 0.10*screenHeight,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.email)
                                ],
                              ),
                              SizedBox(width: 0.04*screenWidth),
                              Column(
                                children: [
                                  Text("Email",style: TextStyle(fontWeight: FontWeight.w800),)
                                ],
                              )
                            ],
                          ),
                          Container(
      
                            height: 0.05*screenHeight,
                            width: 0.80*screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Text(email,textAlign: TextAlign.start,),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.black,height: 3,),
                    Container(
                      margin: EdgeInsets.only(top: 0.02*screenHeight),
      
                      height: 0.10*screenHeight,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.mobile_screen_share_outlined)
                                ],
                              ),
                              SizedBox(width: 0.04*screenWidth),
                              Column(
                                children: [
                                  Text("Mobile No.",style:TextStyle(fontWeight: FontWeight.w800))
                                ],
                              )
                            ],
                          ),
                          Container(
      
                            height: 0.05*screenHeight,
                            width: 0.80*screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Text(number,textAlign: TextAlign.start,),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.black,height: 3,),
                    Container(
                      margin: EdgeInsets.only(top: 0.02*screenHeight),
      
                      height: 0.10*screenHeight,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.work)
                                ],
                              ),
                              SizedBox(width: 0.04*screenWidth),
                              Column(
                                children: [
                                  Text('Field',style:TextStyle(fontWeight: FontWeight.w800))
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 0.80*screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Text(field,textAlign: TextAlign.start,),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.black,height: 3,),
                    Container(
                      margin: EdgeInsets.only(top: 0.02*screenHeight),
      
                      height: 0.10*screenHeight,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.join_inner)
                                ],
                              ),
                              SizedBox(width: 0.04*screenWidth),
                              Column(
                                children: [
                                  Text('Our Company',style:TextStyle(fontWeight: FontWeight.w800))
                                ],
                              )
                            ],
                          ),
      
                          Container(
      
                            height: 0.05*screenHeight,
                            width: 0.80*screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Text('Code-Craft',textAlign: TextAlign.start,),
                            ),
                          ),
                          Divider(color: Colors.black,height: 3,),
                        ],
                      ),
      
                    )
      
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
   );
  }

}
