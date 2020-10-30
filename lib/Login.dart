import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Cadastro.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Image.asset("images/logo.png",),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30, left: 30, right: 30,),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'E-mail ou CPF/CNPJ',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 50, right: 50),
                child: RaisedButton(
                  padding:
                      EdgeInsets.only(left: 90, right: 90, top: 10, bottom: 10),
                  color: Colors.green,
                  textColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Entrar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 1),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cadastro()));
                  },
                  child: Text(
                    "Esqueceu Sua Senha Pandapay?",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )),
              Padding(
                padding: EdgeInsets.only(top:30),
                child: Text("Acessar com: "),
                ),
              Padding(
              padding: EdgeInsets.only(top: 10, left: 90, right: 90),
              child: OutlineButton.icon(
                padding: EdgeInsets.only(left: 20, right: 20),
                borderSide: BorderSide(color: Colors.red),
                color: Colors.red,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                icon: Icon(FontAwesomeIcons.google),
                label: Text("Entrar com Google"),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 90, right: 90),
              child: OutlineButton.icon(
                borderSide: BorderSide(color: Colors.blue),
                color: Colors.red,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                icon: Icon(FontAwesomeIcons.facebook),
                label: Text("Entrar com Facebook"),
                onPressed: () {},
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
