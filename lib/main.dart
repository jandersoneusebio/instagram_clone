import 'package:flutter/material.dart';
import 'package:instagram_clone/Home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
    ),
  ));
}