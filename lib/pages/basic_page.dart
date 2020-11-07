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
        child:CustomScrollView(
          slivers:[
            SliverAppBar(
              expandedHeight:220,
              floating:true,
              pinned:true,
              snap:true,
              elevation:50,
              backgroundColor:Colors.grey,
              flexibleSpace:FlexibleSpaceBar(
                centerTitle:true,
                title:Text('Python beginner',style:TextStyle(fontFamily:'Itim',fontSize:30,color:Colors.white,),),
                background:Image(
                  image:AssetImage('assets/images/ic_image_new.png'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}