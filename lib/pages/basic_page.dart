import 'package:flutter/material.dart';
import 'package:python_profi/pages/home_page.dart';
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
              expandedHeight:190,
              floating:true,
              pinned:true,
              snap:true,
              elevation:50,
              backgroundColor:Colors.deepPurple,
              flexibleSpace:FlexibleSpaceBar(
                centerTitle:true,
                title:Text('Python beginner',style:TextStyle(fontFamily:'Itim',fontSize:20,color:Colors.white,),),
                background:Image(
                  image:AssetImage('assets/images/ic_image_sliver.png'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate:SliverChildListDelegate(
                _buildList(20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.arrow_back_sharp),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        onPressed: ()async{ await Navigator.pushReplacementNamed(context,HomePage.id);},
      ),
    );
  }
  List _buildList(int count){
    List<Widget> items=new List();
    List<String> _themes_basic=['Welcome to python','Your first program','sdfdsf','sdfsdfds','sdfsdfsdfsd','sdfsdfsdfsdf','sdfsdfdsfs','sdfsdfds','sdfsdfsdfsd','sdfsdfsdfsdf','sdfsdfdsfs'];
    for(int i=0;i<_themes_basic.length;i++){
      items.add(_itemList(i+1,_themes_basic[i]));
    }
    return items;
  }
  Widget _itemList(int i,String b){
    return Container(
      height:50,
      width:double.infinity,
      margin:EdgeInsets.all(10),
      padding:EdgeInsets.all(10),
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        color:Colors.deepPurple,
      ),
      child:Text('${i.toString()} ${b}',style:TextStyle(fontSize:25,fontFamily:'Itim',fontWeight:FontWeight.bold),),
    );
  }
}