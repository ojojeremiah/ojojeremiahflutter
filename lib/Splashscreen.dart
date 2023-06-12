import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fly/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (seconds: 3),
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyApp()
        ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 200, left: 100),
            child: Image.asset('assets/airplane.png', width: 200,),
          ),
          Container(
            margin: EdgeInsets.only(top: 300, left: 100),
            child: Text('fly', style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }
}


