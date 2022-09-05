import 'package:flutter/material.dart';
import 'detailsdata.dart';

class DetailScreen extends StatelessWidget {
  static const routename = './detailsscreen';
  final String intro;
final String quality;
DetailScreen({this.intro,this.quality});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final detail =ModalRoute.of(context).settings.arguments as Map<String,String>;
    final name =detail["name"];
    final image = detail['image'];
    final intro = detail['intro'];
    final quality = detail['quality'];
    final life = detail['life'];
    final carrer = detail['carrer'];
    final advice = detail['advice'];
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body:SingleChildScrollView(
       child: Stack(        
           children: [
             Container(
               height: size.height*0.4,
               width: double.infinity,
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
                ),
             ),
             Container(
             margin: EdgeInsets.only(top: size.height*0.38),
             width: double.infinity,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white,),
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 children: <Widget>[
                   Container(
                     height: 7,
                     width: 100,         
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                     color: Colors.red[50],),
                   ),
                   SizedBox(height: 20),
                  
                   SizedBox(height: 10),
                    Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(intro,style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Secret of Success'),
                    SizedBox(height: 10),
                    Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(quality,style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('ChildWood'),
                    SizedBox(height: 10),
                    Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(life,style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Carrer'),
                    SizedBox(height: 10),
                    Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(carrer,style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Advice for YoungStars'),
                    SizedBox(height: 10),
                    Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(advice,style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                 ],
               ),
             ),    
             )
           ],
         ),
       ),
      
    );
  }
}