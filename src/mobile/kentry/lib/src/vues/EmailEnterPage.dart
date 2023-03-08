import 'package:flutter/material.dart';

class EmailEnter extends StatefulWidget {
  const EmailEnter({super.key});

  @override
  State<EmailEnter> createState() => _EmailEnterState();
}

class _EmailEnterState extends State<EmailEnter> {
  final _formKey = GlobalKey<FormState>();
  String? _email ;
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
                        Text("Email ," , style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),)   
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
                                  return 'Entrer une adresse email ';
                                }
                                final RegExp emailExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                                if(!emailExp.hasMatch(input!)){
                                  return "Veillez entrer une Email correcte " ;
                                }
                                return null;
                              },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: "Entrer votre Email",
                            hintText:  "Votre adresse Email",
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