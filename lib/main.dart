import 'package:flutter/material.dart';
import 'package:python_profi/pages/home_page.dart';
import 'package:python_profi/pages/splash_page.dart';
import 'package:python_profi/pages/basic_page.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:SplashPage(),
      routes:{
        HomePage.id:(context)=>HomePage(),
        SplashPage.id:(context)=>SplashPage(),
        BasicPage.id:(context)=>BasicPage(),
      },
    );
  }
}


