import 'package:flutter/material.dart';

class PhoneEnter extends StatefulWidget {
  const PhoneEnter({super.key});

  @override
  State<PhoneEnter> createState() => _PhoneEnterState();
}

class _PhoneEnterState extends State<PhoneEnter> {
  final _formKey = GlobalKey<FormState>();
  String? _phone ;
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
                        Image.asset("assets/icon/flash_screen.png",height: MediaQuery.of(context).size.height*0.15),
                      ],
                 ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                        Text("Entrer Votre " , style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
                      ],
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                        Text("Contact ," , style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),)   
                      ],
                 ),
                 Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                       TextFormField(
                            validator: (input) {
                                if (input!.isEmpty) {
                                  return 'Entrer votre numero de telephone ';
                                }
                                if(input.length < 9 || input.length > 9 ){
                                  return " Doit contenir exactement 9 chiffre" ;
                                }
                                return null;
                              },
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "Entrer votre Numéro de Telephone",
                            hintText:  "Votre contact telephonique",
                            prefixText: "+237  ",
                            border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20), bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                            ),
                          ),
                       ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 15)) ,
                      Container(
                    width: double.infinity,
                    height: 40,
                     child: ElevatedButton(
                             onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                // Appel API de connexion avec _email et _password
                                Navigator.pushNamed(context, '/PhoneMessage');
                              }
                            },
                            child: const Text('Envoyer'),
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
                 )
                 ],
          ),
        ),
        )
    ) ;
  }
}