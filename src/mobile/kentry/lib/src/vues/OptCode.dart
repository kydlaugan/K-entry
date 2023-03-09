import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:auto_size_text/auto_size_text.dart';

class OptCode extends StatelessWidget {
  const OptCode({super.key});

  @override
  Widget build(BuildContext context) {
   var  optcodes = 0 ;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        //toolbarHeight: 100 ,
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFCFCFE),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CO",
                    style:
                        TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DE",
                    style:
                        TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "VERIFICATION",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrer le code  à 4 chiffres que vous avez reçu ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              OtpTextField(
                numberOfFields: 4,
                borderColor: Color(0xFF20478B),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                fieldWidth: 40,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String optcode) {
                   optcodes = int.parse(optcode);
                  if (optcodes == 4444) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('code $optcode valide'),
                          );
                        });
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('code erroné'),
                          );
                        });
                  }
                }, // end onSubmit
              ),
                Padding(padding: EdgeInsets.symmetric(vertical: 15)) ,
                      Container(
                    width: double.infinity,
                    height: 40,
                     child: ElevatedButton(
                             onPressed: () {
                              if (optcodes == 4444) {
                                    Navigator.pushNamed(context, '/EmailMessage');
                              } else {
                                 showDialog(
                                    context: context,
                                    builder: (context) {
                                    return AlertDialog(
                                          title: Text("Verification Code"),
                                          content: Text('code erroné'),
                                          );
                                        });
                                  }
                                // Appel API de connexion avec _email et _password
                            },
                            child: const Text('Continuer'),
                            style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25), // <-- Radius
                                ),
                            primary: Color(0xFF20478B),
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15, 
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
