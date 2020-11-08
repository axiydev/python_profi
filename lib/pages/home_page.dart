import 'package:flutter/material.dart';
import 'package:python_profi/pages/basic_page.dart';
import 'package:python_profi/animations/fade_animation.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;
  void initState(){
    super.initState();
    _controller=AnimationController(vsync:this,duration:Duration(milliseconds:300),);
    _animation=Tween<double>(begin:1.0,end:30.0).animate(_controller)..addStatusListener((AnimationStatus status){
      if(status==AnimationStatus.completed){}
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Container(
          padding:EdgeInsets.all(10),
          width: double.infinity,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
            SizedBox(width: 5,),
            Text('Python',style:TextStyle(color:Colors.yellow,fontSize:35,fontFamily:'Billabong')),
            Text('Profi',style:TextStyle(color:Colors.blue,fontSize:35,fontFamily:'Billabong')),
          ],
        ),
        ),
        elevation:0.0,
        bottomOpacity: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle:true,
      ),
      body:Container(
        padding:EdgeInsets.only(left:20,right: 20,top:5,),
        // color:Colors.blue,
        child:ListView(
          children:[
            FadeAnimation(1.0,GestureDetector(
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
                             color:Colors.lightBlue,
                           ),
                           child:Text('Python beginner',style:TextStyle(fontFamily:'Itim',fontSize:17,color: Colors.white))
                       ),
                     ],
                   ),
                  ),
                   _pyTheme(image:'assets/images/ic_image_new.png'),
                    ]
                ),
            ),
              onTap:()async{
                await Navigator.pushReplacementNamed(context,BasicPage.id);
              },
            )),
            FadeAnimation(1.1,GestureDetector(
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
                                  color:Colors.lightBlue,
                                ),
                                child:Text('Python intermediate',style:TextStyle(fontFamily:'Itim',fontSize:17,color: Colors.white,))
                            ),
                          ],
                        ),
                      ),
                      _pyTheme(image:'assets/images/ic_image_theme1.png'),
                    ]
                ),
              ),
            )),
            FadeAnimation(1.2,GestureDetector(
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
                                  color:Colors.lightBlue,
                                ),
                                child:Text('Python advanced',style:TextStyle(fontFamily:'Itim',fontSize:17,color: Colors.white,))
                            ),
                          ],
                        ),
                      ),
                      _pyTheme(image:'assets/images/ic_image_theme3.png'),
                    ]
                ),
              ),
            )),
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