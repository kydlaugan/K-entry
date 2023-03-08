import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size ;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: size.height*0.35 ,
        backgroundColor: Color(0xFFFCFCFE),
        centerTitle: true,
        toolbarOpacity: 0,
        shadowColor: Color(0xFFFCFCFE),
        elevation: 0,
        shape: StadiumBorder(),
        title: Image.asset("assets/icon/cuate.png" , height: MediaQuery.of(context).size.height*0.45),
      ),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Bienvenue chez ',
                style: TextStyle(color:Color(0xFF000000) , fontSize: 25 , fontWeight: FontWeight.bold ) ,
                children: const <TextSpan>[
                      TextSpan(text: 'Entry ', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25, color: Color(0xFF20478B))),
                      TextSpan(text: ','), 
                    ],      
              ),
            ),  
            Container(
               margin: EdgeInsets.only(left: 25.0 , right: 25.0  , top: 15),
               child: Column(
                children: [
                  TextFormField(
                      validator: (input) {
                          if (input!.isEmpty) {
                            return 'Entrer une adresse email ';
                          }
                          return null;
                        },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: "Email or Phone Number",
                      hintText:  "Email or Phone Number",
                      border: OutlineInputBorder(
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20), bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                    ),
                  ),Padding(padding: EdgeInsets.symmetric(vertical: 6)) ,
                  PasswordField(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 6)),
                  Container(
                    width: double.infinity,
                    height: 35,
                     child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                // Appel API de connexion avec _email et _password
                              }
                            },
                            child: const Text('Se Connecter'),
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
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          TextButton(
                              child: Text(
                                "Créer un Compte",
                                style: TextStyle(fontSize: 19),
                              ),
                              onPressed: (){
                                 Navigator.pushNamed(context, '/second');
                              },
                            ) ,
                             Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                          Image.asset("assets/icon/flash_screen.png",height: MediaQuery.of(context).size.height*0.08),
                      ],
                    ),
                    
                  )

                ],
               ),
            )
          ],
        )
      ),
      
    ) ;
  }
}



class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscured,
        validator: (input) {
                if (input!.isEmpty) {
                  return 'Entrer un mot de passe';
                }
                return null;
              },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
     // Reduces height a bit
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),  // Apply corner radius
        ),
        prefixIcon: Icon(Icons.lock_rounded),
        suffixIcon: Container(
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
            ),
          ),
        ),
      ),
    );
  }
}