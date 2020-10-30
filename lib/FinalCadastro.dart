import 'package:flutter/material.dart';
import 'package:pandapay1/Login.dart';

class FinalCadastro extends StatefulWidget {
  @override
  _FinalCadastroState createState() => _FinalCadastroState();
}

class _FinalCadastroState extends State<FinalCadastro> {
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
                child: Image.asset("images/logo.png"),
              ),
              Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 60),
              //Criando botão de Login
              child: Text(
                "Vamos continuar o seu cadastro preencha os campos abaixo: ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30,),
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
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30,),
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
              padding: EdgeInsets.only(top: 30, left: 30, right: 30,),
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
                    labelText: 'Confirme sua senha',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 50, right: 50),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 80, right: 80, top: 10, bottom: 10),
                color: Colors.green,
                textColor: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  "Confirmar",                  
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login() ));
                },
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
