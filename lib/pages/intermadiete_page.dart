import 'package:flutter/material.dart';
import 'package:python_profi/pages/home_page.dart';
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
          crossAxisCount:3,
          children:[
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
            _itemList(title:'Theme 1',image:'assets/images/ic_logo12.png'),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: ()async{
          return await Navigator.pushReplacementNamed(context, HomePage.id);
        },
        child:Icon(Icons.arrow_back),
        backgroundColor:Colors.blue,
        foregroundColor:Colors.white,
      ),
    );
  }
  Widget _itemList({String title,String image}){
    return Container(
      margin:EdgeInsets.all(5),
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(15),
        color:Colors.white,
      ),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
         children:[
           Image(
             height:70,
             width:50,
             image:AssetImage(image),
           ),
           Text(title,style:TextStyle(fontFamily:'Itim',fontSize:18,),),
         ],
    ),
    );
  }
}