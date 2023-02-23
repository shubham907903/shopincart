import 'dart:async';

import 'package:flutter/material.dart';

import 'package:shopincart/Screens/login_screen.dart';
class splashscreen extends StatefulWidget {


  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
void initState(){
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration =Duration(seconds: 3);
    return new Timer(duration, loginRoute);

  }
  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()
    ));
  }




  Widget build(BuildContext context) {
     return initWidget();
  }
 Widget initWidget(){
  return Scaffold(

    body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
         color: new Color(0xFF01579B),
              gradient: LinearGradient(
                colors: [(new Color(0xFF01579B)),(new Color(0xFF01579B))],

                begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Container(
          child:AspectRatio(
        aspectRatio: 15/27,

          child: Image.asset('assets/images/logo.png',
            fit: BoxFit.fill),

          ),)

      ],
    ),
  );
  }
}