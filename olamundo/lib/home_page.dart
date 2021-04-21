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
  bool isDark = false;
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Flutter ADS',
          )),
          body:Center(
            child:Switch(
              value: AppController.instance.isDark,
              onChanged: (value){
                AppController.instance.changeTheme();
                }));
              }
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child:Icon(Icons.add_circle),
            onPressed:(){
              setState(() {
                counter++;
                //print(counter);
              });
            }
          ),
    );
  }
}