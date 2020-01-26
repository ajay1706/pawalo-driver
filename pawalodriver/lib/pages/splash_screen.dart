
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pawalodriver/pages/home_page.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, onDoneLoading);
  }

  @override
  Widget build(BuildContext context) {

    final double height =  MediaQuery.of(context).size.height;
    final double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: height,
            width: width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(

                        child: Image.asset("assets/images/img.jpeg",height:200,
                          width: width*0.8,),

                      ),

                      Text("PAWALO",style: TextStyle(fontSize: 30,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w700),)
                    ],
                  ),
                  Divider(height: 30,color: Colors.transparent,),


                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
