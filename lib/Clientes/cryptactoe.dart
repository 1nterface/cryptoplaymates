import 'package:flutter/material.dart';
// ignore: camel_case_types
class cryptactoe extends StatefulWidget {
  const cryptactoe({Key? key}) : super(key: key);

  @override
  State<cryptactoe> createState() => cryptactoeState();
}

class cryptactoeState extends State<cryptactoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('CrypTacToe', style: const TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset : false,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:170),
                  SizedBox(
                    height: 200,
                    child: Image.asset('images/pizza.png'),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(left:100.0, right: 100.0),
                child: SizedBox(
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.purple[800],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Icon(Icons.shuffle, color : Colors.white),
                            SizedBox(width:15),
                            Text('RANDOM', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                          ],
                      ),
                      onPressed: () async {

    final FirebaseAuth auth = FirebaseAuth.instance;

    if(FirebaseAuth.instance.currentUser?.uid == null){
    // not logged
    Alert(
    context: context,
    title: "Inicio de sesion",
    content: Column(
    children: <Widget>[
    TextFormField(
    controller: _emailController,
    decoration: InputDecoration(
    icon: Icon(Icons.account_circle, color: Color(0xff6DA08E)),
    labelText: 'Correo',
    ),
    ),
    TextFormField(
    controller: _passwordController,

    obscureText: true,
    decoration: InputDecoration(
    icon: Icon(Icons.lock, color: Color(0xff6DA08E)),
    labelText: 'Contrasena',
    ),
    ),
    ],
    ),
    buttons: [
    DialogButton(
    onPressed: () {

    initState();

    inicioSesion();

    setState(() {
    comprasNotificaciones(context);
    comprasNotificaciones2(context);
    sesion = true;
    });

    },
    child: Text(
    "Entrar",
    style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    color: Color(0xff6DA08E),

    ),
    DialogButton(
    onPressed: () {

    Navigator.of(context).pushNamed('/registro');

    },
    child: Text(
    "Registrarme",
    style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    color: Color(0xff6DA08E),
    )
    ]).show();
    } else {
    // logged
    Navigator.of(context).pushNamed("/cryptactoe_game");
    //Navigator.of(context).pushNamed("/panel_de_control");


                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left:100.0, right: 100.0),
                child: SizedBox(
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children:const [
                            Icon(Icons.gamepad_outlined, color : Colors.white),
                            SizedBox(width:15),
                            Text('CUSTOM', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                          ]
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushNamed("/cryptactoe_game");
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(left:100.0, right: 100.0),
                child: SizedBox(
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.purple[800],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children:const [
                            Icon(Icons.settings, color : Colors.white),
                            SizedBox(width:15),
                            Text('SETTINGS', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                          ]
                      ),
                      onPressed: () async {

                        Navigator.of(context).pushNamed("/cryptactoe_settings");
                      },
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
