import 'package:flutter/material.dart';
import'home_page.dart'

class AppWidget extends StatelessWindget{
 final String   title;

 const AppWidget({key key, this.title}):super(key :key);

  @Override 
  Widget buid(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: HomePage(),
    );
  }
}