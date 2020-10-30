import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'Confirma.dart';

class NegocioForm extends StatefulWidget {
  @override
  _NegocioFormState createState() => _NegocioFormState();

  const NegocioForm({
    Key key,
  }) : super(key: key);
}

class _NegocioFormState extends State<NegocioForm> {
  TextEditingController foneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          //Entrada Do Nome do usuario
          TextField(
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
                labelText: 'Nome Completo',
                labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
          ),
          const SizedBox(height: 15.0),
          //Entrada do CPF do usuario
          TextField(
            inputFormatters: [
              MaskTextInputFormatter(mask: "##.###.###/####-##")
            ],
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
                labelText: 'CNPJ',
                labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
          ),
          const SizedBox(height: 15.0),
          //Entrada do telefone do usuario
          TextField(
            inputFormatters: [MaskTextInputFormatter(mask: "(##) #####-####")],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: "Celular (DDD + Número)",
                labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 80, right: 80),
            child: RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text("Cadastrar"),
              onPressed: () {
                _sendDataToConfirmScreen(context);
              },
            ),
          ),
        ],
      )),
    );
  }
  void _sendDataToConfirmScreen(BuildContext context) {
    String textToSend = foneController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Confirma(text: textToSend,),
        ));
  }
}
