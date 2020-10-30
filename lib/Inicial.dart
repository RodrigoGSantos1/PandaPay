import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandapay1/Cadastro.dart';
import 'package:pandapay1/Login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/ae.jpg"), fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 120, right: 60, top: 80),              
              child: Text(
                "Bem-Vindo",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60, top: 30),              
              child: Text(
                "Esse é PandaPay o aplicativo para você que esta cansado de pagar taxas abusivas. ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 450, left: 20, right: 10),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black,
                    ),
                    height: 40,
                    child: MaterialButton(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      onPressed: () {
                        Navigator.push(
          context, MaterialPageRoute(builder: (context) => Cadastro() ));
                      },
                      child: Text(
                        "CADASTRE-SE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    height: 37,
                    child: MaterialButton(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      onPressed: () {
                        Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login() ));
                      },
                      child: Text(
                        "ENTRAR",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),            
            Padding(
              padding: EdgeInsets.only(top: 20, left: 90, right: 90),
              child: OutlineButton.icon(
                borderSide: BorderSide(color: Colors.red),
                color: Colors.red,
                textColor: Colors.white,
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
                textColor: Colors.white,
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
    );
  }
}
