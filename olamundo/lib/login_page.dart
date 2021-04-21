
import 'package:flutter/material.dart';
import 'package:olamundo/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email="";
  String senha="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

       child: SizedBox(
         width: MediaQuery.of(context).size.width,
         height:MediaQuery.of(context).size.height,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               //Image.network(),
               TextField(
                 onChanged: (text)=> email = text,
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   labelText: "Email",
                   border: OutlineInputBorder(),
                 ),
               ),
               SizedBox(
                 height: 25,
               ),
               TextField(
                 onChanged: (text)=> senha = text,
                 obscureText: true,
                 decoration: InputDecoration(
                   labelText: "Senha",
                   border: OutlineInputBorder(),
                 ),
               ),
               SizedBox(
                 height: 25,
               ),
               ElevatedButton(
                 onPressed:(){
                   if(email== 'emanuelhenrique20161@gmail.com' && senha=='123'){
                     print('login correto');
                     Navigator.of(context).pushReplacementNamed('/home');
                   }else{
                     print('login incorreto');
                   }
                 },
                 child:Text('Login'))
             ],
           ),
          ),
       ),
      ),
    );
  }
}