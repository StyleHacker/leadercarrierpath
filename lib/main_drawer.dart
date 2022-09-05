import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
 
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Image.asset('images/kk.jpeg'),
            SizedBox(
            height: 10,
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Quote"),
              leading: Icon(Icons.format_quote_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
