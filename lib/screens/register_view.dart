import 'package:flutter/material.dart';

import "package:app_posyandu_2/constants.dart";

class RegisterPage extends StatefulWidget {
  static const routeName = "/RegisterPage";
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: ColorPalette.primaryColor,
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          _iconRegistrasi(),
          _titleDescription(),
          _usernameField(),
          _passwordField(),
  //      _buildButton(context)
        ],
      ),
    ));
  }
}

Widget _iconRegistrasi() {
  return Image.asset(
    "assets/images/logo.png",
    height: 150.0,
    width: 100.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: const <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        'Registrasi',
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      Text(
        'Silahkan masukan data anda pada form pendaftaran dibawah ini !',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
    ],
  );
}

Widget _usernameField() {
  return Column(children: <Widget>[
    const Padding(padding: EdgeInsets.only(top: 16.0)),
    TextFormField(
      decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underLineTextField,
              width: 1.0,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          )),
          hintText: 'Username',
          hintStyle: TextStyle(color: ColorPalette.hintColor)),
      style: const TextStyle(color: Colors.white),
      autofocus: true,
    ),
    const Padding(padding: EdgeInsets.only(top: 12.0)),
  ]);
}

Widget _passwordField() {
  return Column(
    children: <Widget>[
    const Padding(padding: EdgeInsets.only(top: 16.0)),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: ColorPalette.underLineTextField,
            width: 1.0,
          )),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0)),
          hintText: 'Password',
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: const TextStyle(color: Colors.white),
        obscureText: true,
      )
    ],
  );
}

/*
Widget _buildButton(BuildContext){

}*/