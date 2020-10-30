import 'package:flutter/material.dart';
import 'NegocioForm.dart';
import 'PessoaForm.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool formVisible;
  int _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

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
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Image.asset("images/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      textColor: _formsIndex == 1 ? Colors.white : Colors.black,
                      color: _formsIndex == 1 ? Colors.green : Colors.white,
                      elevation: 5,
                      child: Text("PARA MIM"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        setState(() {
                          _formsIndex = 1;
                        });
                      },
                    ),
                    const SizedBox(width: 10.0),
                    RaisedButton(
                      textColor: _formsIndex == 2 ? Colors.white : Colors.black,
                      color: _formsIndex == 2 ? Colors.green : Colors.white,
                      elevation: 5,
                      child: Text("PARA MEU NEGÓCIO"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        setState(() {
                          _formsIndex = 2;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: _formsIndex == 1 ? PessoaForm() : NegocioForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
