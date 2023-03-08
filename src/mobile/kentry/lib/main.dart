import 'package:flutter/material.dart';
import 'src/vues/LoginPage.dart' ;
import 'src/vues/EmailPhoneNumberPage.dart' ;
import 'src/vues/EmailEnterPage.dart' ;
import 'src/vues/EnterNumberPhonePage.dart' ;
import 'src/vues/EmailMessage.dart' ;
import 'src/vues/PhoneMessage.dart' ;
import 'src/vues/OptCode.dart' ;

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
          '/EmailEnter': (context) => const EmailEnter(),
          '/PhoneEnter': (context) => const PhoneEnter(),
          '/EmailMessage': (context) => const EmailMessage(),
          '/PhoneMessage': (context) => const PhoneMessage(),
          '/OptCode': (context) => const OptCode(),

        },
    );  }
}