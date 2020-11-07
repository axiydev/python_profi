import 'dart:async';
import 'package:flutter/material.dart';
import 'package:python_profi/pages/home_page.dart';
class SplashPage extends StatefulWidget{
  static final String id='splash_page';
  @override
  _SplashPageState createState()=>_SplashPageState();
}
class _SplashPageState extends State<SplashPage>{
  _Timer(){
    Timer(Duration(seconds:3),(){
      Navigator.pushReplacementNamed(context,HomePage.id);
    });
  }
  @override
  void initState(){
    super.initState();
    _Timer();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      body:Container(
        padding:EdgeInsets.all(20),
        child:Stack(
          children:[
            Center(
              child:Image.asset('assets/images/ic_image.png',height: 270,width: 270,),
            ),
           Container(
             margin:EdgeInsets.only(bottom:20),
             width: double.infinity,
             child:Column(
               mainAxisAlignment:MainAxisAlignment.end,
               children:[
                 Text('QalbTeamSoft',style:TextStyle(fontSize: 18,fontFamily:'Itim',color:Colors.grey),),
               ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}