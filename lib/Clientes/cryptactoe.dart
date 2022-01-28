import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:cryptoplaymates/authentication.dart';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
// ignore: camel_case_types
class cryptactoe extends StatefulWidget {
  const cryptactoe({Key? key}) : super(key: key);

  @override
  State<cryptactoe> createState() => cryptactoeState();
}

class cryptactoeState extends State<cryptactoe> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void sinSesion(){
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
                  icon: Icon(Icons.account_circle, color: Colors.lightBlueAccent),
                  labelText: 'Correo',
                ),
              ),
              TextFormField(
                controller: _passwordController,

                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.lightBlueAccent),
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
                  //comprasNotificaciones(context);
                  //comprasNotificaciones2(context);
                  //sesion = true;
                });

              },
              child: Text(
                "Entrar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.lightBlueAccent,

            ),
            DialogButton(
              onPressed: () {

                Navigator.of(context).pushNamed('/registro');

              },
              child: Text(
                "Registrarme",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.lightBlueAccent,
            )
          ]).show();
    } else {
      // logged
      Navigator.of(context).pushNamed("/cryptactoe_game");

    }

  }
  void sinSesion2(){
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
                  icon: Icon(Icons.account_circle, color: Colors.pinkAccent),
                  labelText: 'Correo',
                ),
              ),
              TextFormField(
                controller: _passwordController,

                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.pinkAccent),
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
                  //comprasNotificaciones(context);
                  //comprasNotificaciones2(context);
                  //sesion = true;
                });

              },
              child: Text(
                "Entrar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.lightBlueAccent,

            ),
            DialogButton(
              onPressed: () {

                Navigator.of(context).pushNamed('/registro');

              },
              child: Text(
                "Registrarme",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.lightBlueAccent,
            )
          ]).show();
    } else {
      // logged
      Navigator.of(context).pushNamed("/cryptactoe_game");

    }

  }

  Future<void> inicioSesion() async {
    // marked async
    AuthenticationHelper()
        .signIn(email: _emailController.text, password: _passwordController.text)
        .then((result) {
      if (result == null) {

        Navigator.of(context).pop();

        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home(cajas_modelo("","","",0,0,0,0,0,"","","","","",0))));
        Toast.show("¡Has iniciado sesion!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);

      } else {
        Toast.show("Contraseña incorrecta!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF293143),
        title: const Text('Cryptactoe', style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Color(0xFF171B26),
      resizeToAvoidBottomInset : false,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height:170),
                    SizedBox(
                      height: 200,
                      child: Image.asset('images/pizza.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),


                Container(
                  decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlueAccent,
                          spreadRadius: 4,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.lightBlueAccent,
                          spreadRadius: -4,
                          blurRadius: 5,
                        )
                      ]),
                  child: SizedBox(
                    width: 800,
                    height: 70,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Icon(Icons.fiber_new, color : Colors.white),
                            SizedBox(width:15),
                            Text('NEW GAME', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                          ],
                        ),
                        onPressed: () async {

                          Navigator.of(context).pushNamed("/cryptactoe_lobby");

                          //sinSesion();

                        },
                      ),
                    ),
                  ),
                ),



                const SizedBox(height: 20),

                Container(
                  decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pinkAccent,
                          spreadRadius: 4,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.pinkAccent,
                          spreadRadius: -4,
                          blurRadius: 5,
                        )
                      ]),
                  child: SizedBox(
                    width: 800,
                    height: 70,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children:const [
                              Icon(Icons.list, color : Colors.white),
                              SizedBox(width:15),
                              Text('INSTRUCTIONS', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                            ]
                        ),
                        onPressed: () async {

                          Navigator.of(context).pushNamed("/cryptactoe_instructions");
                          //sinSesion2();

                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                         Radius.circular(18.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF815FD5),
                          spreadRadius: 4,
                          blurRadius: 10,
                        ),
                         BoxShadow(
                          color: Color(0xFF815FD5),
                          spreadRadius: -4,
                          blurRadius: 5,
                        )
                      ]),
                  child: SizedBox(
                    width: 800,
                    height: 70,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Color(0xFF815FD5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
      ),
    );
  }
}
