import 'package:flutter/material.dart';
class ThemeOne extends StatefulWidget{
  static final String id="theme_one";
  @override
  _ThemeOneState createState()=>_ThemeOneState();
}
class _ThemeOneState extends State<ThemeOne>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar:AppBar(
        title:Text('1-mavzu',style:TextStyle(fontFamily:'Itim',fontSize:30),),
        centerTitle:true,
        backgroundColor:Colors.deepPurple,
        elevation:0.0,
        bottomOpacity:0.0,
        actions:[
          IconButton(
            icon:Icon(Icons.account_box_outlined,color:Colors.yellowAccent),
            iconSize:30,
            onPressed:()async{
              print('PRESSED');
            },
          ),
          SizedBox(width:30),
        ],
      ),
      body:SingleChildScrollView(
        child:Column(
          children:[
            Container(
              height: 250,
              color:Colors.yellow,
              margin:EdgeInsets.only(left: 10,right:10),
            ),
            Container(
                height: 250,
                color:Colors.red,
              margin:EdgeInsets.only(left: 10,right:10),
            ),
            Container(
                height: 250,
                color:Colors.green,
              margin:EdgeInsets.only(left: 10,right:10),
            ),
          ],
        ),
      ),
    );
  }
}