import 'package:flutter/material.dart';
import 'Cadastro.dart';
import 'FinalCadastro.dart';

class Confirma extends StatelessWidget {
  final String text;
  Confirma({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMS De Confirmação"),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.green,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Cadastro()));
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 60),              
              child: Text(
                "Enviamos um SMS de confirmação para o número que você nos Informou: ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 30),
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 100, right: 70),
              child: Image.asset("images/SMS.png"),
              ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 50),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Código de confirmação',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150, left: 50, right: 50),
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
          context, MaterialPageRoute(builder: (context) => FinalCadastro() ));
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
