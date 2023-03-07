import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 50.0),
          color: Color(0xFFFCFCFE),
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage("assets/icon/cuate.png"),
                  height: size.height * 0.3),
              Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText: "Email or Phone Number ",
                        hintText: "Email or Phone Number ",
                        border: OutlineInputBorder()),
                  )
                ],
              )))
            ],
          ),
        ),
      ),
    );
  }
}
