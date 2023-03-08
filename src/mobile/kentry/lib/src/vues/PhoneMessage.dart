import 'package:flutter/material.dart';

class PhoneMessage extends StatelessWidget {
  const PhoneMessage({super.key});

  @override
  Widget build(BuildContext context) {
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
          margin: EdgeInsets.only(left: 20 , right: 20 , top: 40),
          child: Column(
             children: [
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        Image.asset("assets/icon/email.png",height: MediaQuery.of(context).size.height*0.25),
                      ],
                 ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text("Regarder Vos Messages " , style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                      ],
                 ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text("Nous vous enverrons un code d'activation  " , style: TextStyle(fontSize:20),),
                      ],
                 ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text("Par votre Numéro de Telephone  " , style: TextStyle(fontSize:20),),
                      ],
                 ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                  Container(
                    width: double.infinity,
                    height: 50,
                     child: ElevatedButton(
                            onPressed: () {
                            },
                            child: const Text('Continuer'),
                            style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25), // <-- Radius
                                ),
                            primary: Color(0xFF20478B),
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 25, 
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