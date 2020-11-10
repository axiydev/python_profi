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
        title:Text('Python Beginner',style:TextStyle(fontFamily:'Itim',fontSize:25),),
        backgroundColor:Colors.deepPurple,
        bottomOpacity:0.0,
        elevation:0.0,
        centerTitle:true,
        actions:[
          IconButton(
            icon:Icon(Icons.message,color:Colors.yellowAccent,),
          onPressed:()async{
              print('PRESSED');
          },
          ),
          SizedBox(width:20),
        ],
      ),
      body:SingleChildScrollView(
        child:Column(
          children:[
            Container(
              height: 130,
              color:Colors.transparent,
              margin:EdgeInsets.only(left: 10,right:10,bottom:10),
              child:Row(
                children:[
                  Expanded(
                    flex:1,
                    child:Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:Colors.white,
                      ),
                      child:Center(
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            Image(
                              height: 60,
                              width:60,
                              image:AssetImage('assets/images/ic_logo12.png'),
                            ),
                            SizedBox(height:6,),
                            Text('1-mavzu',style:TextStyle(fontSize:20,fontFamily:'Itim'),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:10),
                  Expanded(
                    flex:2,
                    child:Container(
                      decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(15),
                      ),
                      child:Center(
                        child:Text('Mavzu:Welcome to Python',style:TextStyle(fontSize:20,fontFamily:'Itim'),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 250,
                color:Colors.red,
              margin:EdgeInsets.only(left: 10,right:10),
            ),
            Container(
                height: 250,
                color:Colors.green,
              margin:EdgeInsets.only(left: 10,right:10)
            ),
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