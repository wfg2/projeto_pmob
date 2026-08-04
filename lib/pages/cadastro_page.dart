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
      body: ListView(
        children: [
          SizedBox(height: 50),
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/vetores-premium/icone-de-perfil-de-usuario-em-circulo_1256048-12499.jpg?semt=ais_hybrid&w=740&q=80'
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text('Adicionar foto', style: TextStyle(color: Color(0xFF1800ad), fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
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
