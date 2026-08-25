import 'package:flutter/material.dart';
import 'package:projeto/db/shared_prefs.dart';
import 'package:projeto/pages/home_screen.dart';
import 'package:projeto/db/userDAO.dart';
import 'package:projeto/domain/user.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  SharedPrefs prefs = SharedPrefs();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [SizedBox(height: 40),
              Center(child:
              Text(
                "Crie uma Conta",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF1800ad),
                ),
              ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: userController,
                  style: TextStyle(color: Color(0xFF1800ad)),
                  decoration: InputDecoration(
                    labelText: "Nome de usuário",
                    labelStyle: TextStyle(color: Color(0xFF1800ad)),
                    hintStyle: TextStyle(color: Color(0xFF303f9f)),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Color(0xFF1800ad)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Color(0xFF1800ad)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(color: Color(0xFF1800ad)),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Color(0xFF1800ad)),
                    hintStyle: TextStyle(color: Color(0xFF303f9f)),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Color(0xFF1800ad)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Color(0xFF1800ad)),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1800ad),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () async {
                    String username = userController.text;
                    String password = passwordController.text;
                    if (username.isNotEmpty && password.isNotEmpty) {
                      User newUser = User(username, password);
                      await UserDao().saveUser(newUser);
                      await SharedPrefs().setUserStatus(true);
                      if (context.mounted) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()),);
                      }
                    } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                    content: Text('Preencha todos os campos!'),
                    backgroundColor: Colors.red,),);
                    }
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: "Montserrat",
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
