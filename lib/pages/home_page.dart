import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Container(
          width: double.infinity,
          child:Row(
          children: [
            SizedBox(width: 65,),
            Text('Python',style:TextStyle(color:Colors.yellow,fontSize:35,fontFamily:'Billabong')),
            Text('Profi',style:TextStyle(color:Colors.blue,fontSize:35,fontFamily:'Billabong')),
          ],
        ),
        ),
        backgroundColor: Colors.white,
        centerTitle:true,
      ),
      body:Container(
        padding:EdgeInsets.only(left:20,right: 20,top:5,),
        // color:Colors.blue,
        child:ListView(
          children:[
            GestureDetector(
              child:Container(
                 margin: EdgeInsets.only(top:10),
                 width: double.infinity,
                 child:Column(
                  children:[
                  Container(
                    child:Row(
                     children: [
                       Container(
                           padding:EdgeInsets.all(7),
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                             color:Colors.green,
                           ),
                           child:Text('Python beginner',style:TextStyle(fontSize:17,color: Colors.white,fontWeight: FontWeight.bold,))
                       ),
                     ],
                   ),
                  ),
                   _pyTheme(image:'assets/images/ic_image_new.png'),
                    ]
                ),
            ),
            ),
            GestureDetector(
              child:Container(
                margin: EdgeInsets.only(top:10),
                width: double.infinity,
                child:Column(
                    children:[
                      Container(
                        child:Row(
                          children: [
                            Container(
                                padding:EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  color:Colors.green,
                                ),
                                child:Text('Python intermediate',style:TextStyle(fontSize:17,color: Colors.white,fontWeight: FontWeight.bold,))
                            ),
                          ],
                        ),
                      ),
                      _pyTheme(image:'assets/images/ic_image_theme1.png'),
                    ]
                ),
              ),
            ),
            GestureDetector(
              child:Container(
                margin: EdgeInsets.only(top:10),
                width: double.infinity,
                child:Column(
                    children:[
                      Container(
                        child:Row(
                          children: [
                            Container(
                                padding:EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  color:Colors.green,
                                ),
                                child:Text('Python advanced',style:TextStyle(fontSize:17,color: Colors.white,fontWeight: FontWeight.bold,))
                            ),
                          ],
                        ),
                      ),
                      _pyTheme(image:'assets/images/ic_image_theme3.png'),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _pyTheme({image}){
    return Container(
      height:150,
      width: double.infinity,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.only(topLeft: Radius.zero,topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20),),
        image:DecorationImage(
          image: AssetImage(image),
          fit:BoxFit.cover,
        ),
      ),
      child:Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.only(topLeft: Radius.zero,topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20),),
          gradient:LinearGradient(
            begin: Alignment.bottomRight,
            colors:[
              Colors.white12.withOpacity(0.5),
              Colors.white12.withOpacity(0.3),
              Colors.white12.withOpacity(0.2),
              Colors.white12.withOpacity(0.1),
            ],
          ),
        )
      ),
    );
  }
}