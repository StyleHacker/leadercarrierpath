import 'package:flutter/material.dart';
import 'package:samplee/home_screen.dart';
import 'griddata.dart';
import 'package:samplee/main_drawer.dart';
class GridScreen extends StatefulWidget {
  

  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('The Way'),),
         drawer: MainDrawer(),
      body: GridView(
        padding: EdgeInsets.all(10),
          children: biodetails.map((e) => HomeScreen(e.name,e.image,e.intro,e.qulity,e.life,e.carrer,e.advice)).toList() ,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      childAspectRatio: 4/4,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      maxCrossAxisExtent: 200,
      ),),
    );
  }
}