import 'package:flutter/material.dart';

class TelaEditarPerfil extends StatefulWidget {
  const TelaEditarPerfil ({super.key});

  @override
  State<TelaEditarPerfil> createState() => _TelaEditarPerfilState();
}

class _TelaEditarPerfilState extends State<TelaEditarPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1800ad),
        leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,),
        title: Text('Editar Perfil', style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
      ),

      body: ListView(
    children: [
      SizedBox(height: 20),
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
             child: Text('Editar foto', style: TextStyle(color: Color(0xFF1800ad), fontWeight: FontWeight.bold),),
           ),
         ],
       ),
      ),
      
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextField(
          style: TextStyle(color: Color(0xFF1800ad)),
          decoration: InputDecoration(
            labelText: "Nome",
            labelStyle: TextStyle(color: Color(0xFF1800ad)),
            hintText: "Editar nome",
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
            labelText: "Nome de Usuário",
            labelStyle: TextStyle(color: Color(0xFF1800ad)),
            hintText: "Editar nome de usuário",
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
            labelText: "Bio",
            labelStyle: TextStyle(color: Color(0xFF1800ad)),
            hintText: "Editar bio",
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
            labelText: "Gênero",
            labelStyle: TextStyle(color: Color(0xFF1800ad)),
            hintText: "Editar gênero",
            hintStyle:  TextStyle(color: Color(0xFF303f9f)),
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
        ),)

    ],
      ),
    );
  }
}
