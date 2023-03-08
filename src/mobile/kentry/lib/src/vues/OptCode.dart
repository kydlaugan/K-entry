import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OptCode extends StatelessWidget {
  const OptCode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        //toolbarHeight: 100 ,
        foregroundColor: Colors.black, 
        backgroundColor: Color(0xFFFCFCFE),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20 , right: 20 , top: 40),
          child: Column(
             children: [
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("CO" , style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold),),
                      ],
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("DE" , style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold),),
                      ],
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("VERIFICATION" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                 ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Entrer le code  à 4 chiffres que vous avez reçu " , style: TextStyle(fontSize: 15),),
                      ],
                 ),
                Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                 OtpTextField(
                    numberOfFields: 4,
                    borderColor: Color(0xFF20478B),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true, 
                    fieldWidth: 50,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                        //handle validation or checks here           
                    },
                    //runs when every textfield is filled
                    onSubmit: (String optcode){
                        showDialog(
                            context: context,
                            builder: (context){
                            return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('vous avez entré $optcode'),
                            );
                            }
                        );
                    }, // end onSubmit
                ),
             ],
          ),
          ),
          ),
    );
  }
}