import 'package:flutter/material.dart';
import 'src/vues/LoginPage.dart' ;
import 'src/vues/EmailPhoneNumberPage.dart' ;


void main() => runApp( MyApp() );        

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kentry',
      debugShowCheckedModeBanner: false,
       initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const login(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const ChoixEmailPhone(),
        },
    );  }
}