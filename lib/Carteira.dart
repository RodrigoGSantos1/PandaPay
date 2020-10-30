import 'package:flutter/material.dart';

class Carteira extends StatefulWidget {
  @override
  _CarteiraState createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: 0,
        ),
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black87,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "Sacar",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: IconButton(
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, top: 10),
                          child: Text(
                            "Saldo Total:",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 50, top: 10),
                            child: Text(
                              "R\$",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Text(
                              "0,00",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 50, top: 39),
                        child: Text(
                          "Depositar",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //

            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black54),
                        padding: EdgeInsets.only(left: 10, top: 70, right: 10),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.credit_card,
                              size: 75,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 90),
                              child: Text(
                                "Peça já seu cartão",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blue),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.smartphone,
                                size: 65,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 10),
                                child: Text(
                                  "Recarregar celular",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.red),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.airport_shuttle,
                                size: 65,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "Carregar Transporte",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFAABF4A)),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.confirmation_number,
                                size: 65,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "Voucher e Créditos",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFF1dd2b2)),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.record_voice_over,
                                size: 65,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "Fale Conosco",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 200, right: 10),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.red,
                    ),
                    height: 40,
                    child: MaterialButton(
                      padding: EdgeInsets.only(left: 63, right: 63),
                      onPressed: () {},
                      child: Text(
                        "Sacar",
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
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.green,
                      ),
                      height: 37,
                      child: MaterialButton(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        onPressed: () {},
                        child: Text(
                          "Depositar",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
