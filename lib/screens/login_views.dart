import 'package:flutter/material.dart';

import "package:app_posyandu_2/constants.dart";
import "package:app_posyandu_2/screens/register_view.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.all(20.0);
    return Scaffold(
        body: Container(
      color: ColorPalette.primaryColor,
      padding: edgeInsets,
      child: ListView(
        children: <Widget>[
          _iconLogin(),
          _titleDescription(),
          //_textField(),
          _userField(),
          _buildButton(context)
        ],
      ),
    ));
  }
}

Widget _iconLogin() {
  return Image.asset(
    "assets/images/logo.png",
    height: 150.0,
    width: 100.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: const <Widget>[
      Padding(padding: EdgeInsets.only(top: 16.0)),
      Text(
        "Login",
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      Text(
        "Silahkan login dengan akun dan password anda",
        style: TextStyle(fontSize: 12.0, color: Colors.white),
        textAlign: TextAlign.center,
      )
    ],
  );
}

Widget _userField() {
  return Column(
    children: <Widget>[
      TextFormField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: ColorPalette.underLineTextField, width: 0.5),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
            )),
        
        style: const TextStyle(color: Colors.white),
        autofocus: true,
      ),
    ],
  );
}

Widget _textField() {
  return Column(children: <Widget>[
    const Padding(
      padding: EdgeInsets.only(top: 12.0),
    ),
    TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: ColorPalette.underLineTextField, width: 1.5),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 3.0,
          ),
        ),
      ),

//       hintText: "Username",
//        hintStyle: const TextStyle( color: Colors.white,),
      style: const TextStyle(color: Colors.white),
      autofocus: false,
    ),
    const Padding(
      padding: EdgeInsets.only(top: 12 / 0),
    ),
    TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorPalette.underLineTextField,
            width: 1.5,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 3.0,
          ),
        ),
        hintText: "Password",
        hintStyle: TextStyle(color: ColorPalette.hintColor),
      ),
      style: const TextStyle(color: Colors.white),
      autofocus: false,
    ),
  ]);
}

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
Widget _buildButton(BuildContext) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(top: 16),
      ),
      InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: const Text(
            "Login",
            style: TextStyle(color: ColorPalette.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
      const Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(top: 16.0),
      ),
      const Text(
        "atau",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
      // ignore: deprecated_member_use
      FlatButton(
        child: const Text(
          "Register",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(BuildContext, RegisterPage.routeName);
        },
      ),
    ],
  );
}
