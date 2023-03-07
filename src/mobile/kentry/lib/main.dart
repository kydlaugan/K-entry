import 'package:flutter/material.dart';
import 'src/vues/LoginPage.dart' ;

void main() => runApp( MyApp() );        

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kentry',
      debugShowCheckedModeBanner: false,
      home: login() ,
    );  }
}