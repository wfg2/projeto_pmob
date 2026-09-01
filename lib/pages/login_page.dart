import 'package:flutter/material.dart';
import 'package:projeto/db/shared_prefs.dart';
import 'package:projeto/pages/cadastro_page.dart';
import 'package:projeto/pages/home_screen.dart';
import 'package:projeto/db/userDAO.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              "Fazer Login",
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
                controller: userController,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                style: TextStyle(color: Color(0xFF1800ad)),
                obscureText: true,
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
                controller: passwordController,
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
                onPressed: onPressed,
                child: Text(
                  'Entrar',
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
          Column(
              children: [
              Text(
                "Não tem uma conta?",
                style: TextStyle(
                  color: Color(0xFF1800ad),
                  fontFamily: "Montserrat",
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1800ad),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CadastroPage();
                      },
                    ),
                  );
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
            ],)
        ],
      ),
    );
  }

  onPressed() async {
    String username = userController.text;
    String password = passwordController.text;

    bool isAuth = await UserDao().login(username, password);

    if (isAuth) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );

        prefs.setUserStatus(true);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Usuário e/ou Senha incorretos!'),
          backgroundColor: Colors.red,),);
    }

  }
}
