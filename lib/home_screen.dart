import 'package:flutter/material.dart';
import 'package:samplee/detila_screen.dart';

class HomeScreen extends StatelessWidget {
  final String name;
   final String image;
   final String intro;
   final String quality;
   final String life;
   final String carrer;
   final String advice;
   HomeScreen(this.name,this.image,this.intro,this.quality,this.life,this.carrer,this.advice);

   void SelectGrid(BuildContext context){
        Navigator.pushNamed(context, DetailScreen.routename , arguments: {'name':name,'image':image,'intro':intro,'quality':quality,'life':life,'carrer':carrer,'advice':advice});
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: GestureDetector(
        onTap:()=> SelectGrid(context),
        child: Container(
          child: Center(child: Text(name)),
          decoration: BoxDecoration(
            image: DecorationImage(image: 
            AssetImage(image),
          fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}