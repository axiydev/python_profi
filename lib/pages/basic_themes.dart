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
                        color:Colors.yellowAccent,
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
                      padding:EdgeInsets.all(10),
                      decoration:BoxDecoration(
                        color:Colors.cyanAccent,
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
              height: 1000,
              width:double.infinity,
              margin:EdgeInsets.only(left: 10,right:10,bottom:10),
              padding:EdgeInsets.all(10),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(15),
                color:Colors.white,
              ),
              child:Text("""Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or other type of compatible computer. Text messages may be sent over a cellular network, or may also be sent via an Internet connection.The term originally referred to messages sent using the Short Message Service (SMS). It has grown beyond alphanumeric text to include multimedia messages using the Multimedia Messaging Service (MMS) containing digital images, videos, and sound content, as well as ideograms known as emoji (happy faces, sad faces, and other icons), and instant messenger applications (usually the term is used when on mobile devices).Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages became an accepted part of many cultures, as happened earlier with emailing.[1] This makes texting a quick and easy way to communicate with friends, family and colleagues, including in contexts where a call would be impolite or inappropriate (e.g., calling very late at night or when one knows the other person is busy with family or work activities). Like e-mail and voicemail and unlike calls (in which the caller hopes to speak directly with the recipient), texting does not require the caller and recipient to both be free at the same moment; this permits communication even between busy individuals. Text messages can also be used to interact with automated systems, for example, to order products or services from e-commerce websites, or to participate in online contests. Advertisers and service providers use direct text marketing to send messages to mobile users about promotions, payment due dates, and other notifications instead of using postal mail, email, or voicemail.""",style:TextStyle(fontSize:20,fontFamily:'Itim'),),
            ),

          ],
        ),
      ),
    );
  }
}