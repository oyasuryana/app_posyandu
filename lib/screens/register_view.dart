import 'package:flutter/material.dart';

import "package:app_posyandu_2/constants.dart";

class RegisterPage extends StatefulWidget{

  static const routeName ="/RegisterPage";
  const RegisterPage({Key? key}) : super(key: key);

@override

  _RegisterPageState createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  @override 
  Widget build(BuildContext context){
     return Scaffold(
       body: Container(
         color: ColorPalette.primaryColor,
         padding: const EdgeInsets.all(20.0),
       )
     );
  }
}