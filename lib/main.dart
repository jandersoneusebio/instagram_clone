import 'package:flutter/material.dart';
import 'package:instagram_clone/telas/DirectScreen.dart';
import 'package:instagram_clone/telas/Home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      bottomAppBarColor: Colors.white
    ),
    routes: {
      "/direct" : (context) => DirectScreen()
    },


  ));
}