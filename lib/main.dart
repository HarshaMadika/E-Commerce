import 'package:flutter/material.dart';
import 'package:poorneshapp/pages/homePage.dart';
import 'package:poorneshapp/pages/intropage.dart';
import 'package:poorneshapp/pages/loginPage.dart'; 

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}
