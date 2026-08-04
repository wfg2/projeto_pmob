import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              style: TextStyle(color: Color(0xFF1800ad)),
              decoration: InputDecoration(
                labelText: "Nome de usuário",
                labelStyle: TextStyle(color: Color(0xFF1800ad)),
                hintStyle: TextStyle(color: Color(0xFF303f9f)),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF1800ad)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF1800ad),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              style: TextStyle(color: Color(0xFF1800ad)),
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Color(0xFF1800ad)),
                hintStyle: TextStyle(color: Color(0xFF303f9f)),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF1800ad)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF1800ad),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
