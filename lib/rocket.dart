import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class rocket extends StatefulWidget {
  const rocket({super.key});

  @override
 // State<rocket> createState() => _rocketState();
  _rocketState createState()=>_rocketState();
   //_LottiePageState createState() => _LottiePageState(); 
}

class _rocketState extends State<rocket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network("https://lottie.host/9c48b2b7-a9f1-4e23-84f8-bf0d3e2c257c/xui4OemRxk.json")
          ],
        ),
      ) ,
    );
  }
}