import 'package:flutter/material.dart';
class BasicPage extends StatefulWidget{
  static final String id='basic_page';
  _BasicPageState createState()=>_BasicPageState();
}
class _BasicPageState extends State<BasicPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:Text('welcome to basic',style:TextStyle(fontSize:40),),
      ),
    );

  }
}