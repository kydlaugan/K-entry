import 'package:flutter/material.dart';

class ChoixEmailPhone extends StatelessWidget {
  const ChoixEmailPhone({super.key});

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
          margin: EdgeInsets.only(left: 20 , right: 20 , top: 20),
          child: Column(
            children: [
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        Image.asset("assets/icon/flash_screen.png",height: MediaQuery.of(context).size.height*0.15),
                      ],
                 ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                        Text("Créer Votre" , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ],
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                        Text("Compte ," , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)   
                      ],
                 ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  Container(
                    width: double.infinity,
                    height: 40,
                     child: ElevatedButton(
                            onPressed: () {
                                Navigator.pushNamed(context, '/EmailEnter');
                            },
                            child: const Text('Continuer Avec Google'),
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

                  Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                  Container(
                    width: double.infinity,
                    height: 40,
                     child: ElevatedButton(
                            onPressed: () {
                                Navigator.pushNamed(context, '/PhoneEnter');
                            },
                            child: const Text('Continuer avec le Contact'),
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