import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // @logo
            Stack(
              alignment: Alignment.center,
              children: <Widget>[

                  Container(
                    margin: EdgeInsets.only(left: 20.0,top:90.0),
                    height: 60.0,
                    width:60.6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color: Colors.amber),
                    child: new Icon(Icons.layers,color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50.0,top: 50.0),
                    height: 60.0,
                    width:60.6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color: Colors.red),
                    child: new Icon(Icons.record_voice_over,color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 0.0,top: 10.0),
                    height: 60.0,
                    width:60.6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color: Colors.lightBlue),
                    child: new Icon(Icons.home,color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90.0,top:40.0),
                    height: 60.0,
                    width:60.6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color: Colors.teal),
                    child: new Icon(Icons.add_location,color: Colors.white,),
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 80.0),
                  child: Text("عقارات" , style: TextStyle(fontSize: 30.0),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top:10.0,bottom: 10.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10.0),),
                        child: Text("تسجيل مستخدم جديد",style: TextStyle(fontSize: 15.0,color: Colors.white),) ,
                      ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0,right: 10.0,top:10.0,bottom: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10.0),),
                      child: Text("Facebook",style: TextStyle(fontSize: 15.0,color: Colors.white),) ,
                    ),
                  ),
                ),Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0,right: 20.0,top:10.0,bottom: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10.0),),
                      child: Text("Google + ",style: TextStyle(fontSize: 15.0,color: Colors.white),) ,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
