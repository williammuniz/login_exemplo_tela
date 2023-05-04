import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testeteste/pages/login/login_controller.dart';

import '../home/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 50, left: 40, right: 40),
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("images/logopng.png"),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Informe o login",
                      labelText: "login",
                      labelStyle: GoogleFonts.raleway(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)
                  ),
                  controller: loginController.loginController,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Informe a senha",
                      labelText: "senha",
                      labelStyle: GoogleFonts.raleway(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                  ),
                  controller: loginController.senhaController,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                    onPressed: (){
                      loginController.logar();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text("Entrar",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )
                  )),
            )
          ],
        ),
      ),
    );
  }
}
