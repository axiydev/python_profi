import 'package:flutter/material.dart';
class InterPage extends StatefulWidget{
  static final String id="inter_page";
  @override
  _InterPageState createState()=>_InterPageState();
}
class _InterPageState extends State<InterPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle:true,
        title:Text('Python intermediate',style:TextStyle(color:Colors.white,fontFamily:'Itim',fontSize:25),),
        elevation:0.0,
        bottomOpacity:0.0,
      ),
      body:Container(
        color:Colors.deepPurple,
        padding:EdgeInsets.all(20),
        child:GridView.count(

        ),
      ),
    );
  }
}