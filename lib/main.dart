import 'package:flutter/material.dart';
import 'package:intro_page/Onboarding.dart';


void main(){

  runApp(IntroPage());
}

class IntroPage extends StatelessWidget {
  const IntroPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Onboarding(),
      
    );
  }
}