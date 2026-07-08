

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: Color(0xFF04D2FF)),
        textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 65,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Inter')),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF026D8E)),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            fillColor: Color(0xFFFFFFFF))
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme=Theme.of(context);
    var size=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset('assets/img/logo.png'),
          Text('Login',style: theme.textTheme.bodyLarge,),
          SizedBox(width: size-190,child: TextField(style:TextStyle(fontSize: 32,color: Color(0xFF505050) ),decoration: InputDecoration(
              prefixIcon: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFFC5C5C5)),width:70,height:70,child: Icon(size:30,Icons.email_outlined,color: Color(0xFF026D8E),)),
              filled:true
              ,fillColor: theme.inputDecorationTheme.fillColor),)),
          SizedBox(height: 15,),
            SizedBox(
              width: size-190,
            child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                style:TextStyle(fontSize: 32,color: Color(0xFF505050)),decoration: InputDecoration(

              prefixIcon: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFFC5C5C5)),width:70,height:70,child: Icon(size:30,Icons.lock_outline,color: Color(0xFF026D8E),)),
                filled:true
                ,fillColor: theme.inputDecorationTheme.fillColor)),
          ),
          SizedBox(height: 40,),
          ElevatedButton(
        
              style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF04D2FF),
                  fixedSize: Size(size-180, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),onPressed: (){}, child:           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              Text('|',style: TextStyle(fontSize: 20,color: Colors.white),),
              Icon(Icons.arrow_forward_outlined,color: Colors.white,),

            ],
          )),
          SizedBox(height: 15,),
            Text('Forgot Password?',style: TextStyle(decoration: TextDecoration.underline,fontFamily: 'Inter'),),
            SizedBox(height: 15,),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size/2-100,
                  height: 2,
                  child: Divider(color: Color(0xFF000000),height: 1,thickness: 4,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('or',style: TextStyle(fontSize: 20),),
                ),
                SizedBox(
                  width: size/2-100,
                  height: 2,
                  child: Divider(color: Color(0xFF000000),height: 1,thickness: 4,),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size-180, 50),
                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFF039DC1)),borderRadius: BorderRadius.circular(10)),
                backgroundColor: Color(0xFF04D2FF).withOpacity(0.4),),
              onPressed: (){}, child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SignUp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('|',style: TextStyle(fontSize: 20,color: Colors.white),),
                  Icon(Icons.arrow_forward_outlined,color: Colors.white,),

                ],
              )),
        ],),
      ),
    );
  }
}

