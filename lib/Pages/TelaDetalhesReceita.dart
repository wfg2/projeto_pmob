import 'package:flutter/material.dart';

class Teladetalhesreceita extends StatefulWidget {
  const Teladetalhesreceita({super.key});

  @override
  State<Teladetalhesreceita> createState() => _TeladetalhesreceitaState();
}

class _TeladetalhesreceitaState extends State<Teladetalhesreceita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back, color: Colors.white,), backgroundColor: Color(0xFF0927eb),
        title: Text('Bolo de Cenoura', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    ));
  }
}
