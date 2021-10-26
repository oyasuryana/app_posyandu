import 'package:flutter/material.dart';
import 'package:app_posyandu_2/screens/login_views.dart';
import 'package:app_posyandu_2/screens/register_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Posyandu',
      initialRoute: "/",
      routes: {
        "/" : (context) => const LoginPage(),
        RegisterPage.routeName : (context) => const RegisterPage()
      },
    );
  }
}

