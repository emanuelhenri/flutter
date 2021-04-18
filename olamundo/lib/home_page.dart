import'package:flutter/material.dart';
import'home_page.dart';
class HomePage extends StatefulWidget{
  @Override
  State<HomePage> createState(){
    return HomePageState();
  }
 
}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: GestureDetector(
          child: Text('click: $counter'),
          onTap:(){
            setState(() {
              counter++;
              print(counter);
            });
          },
        )
      ),
    );
  }
  
  
}