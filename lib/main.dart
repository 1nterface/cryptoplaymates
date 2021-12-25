//@dart=2.9
import 'package:cryptoplaymates/Modelo/agentes_modelo.dart';
import 'package:cryptoplaymates/Clientes/clientes_login.dart';
import 'package:cryptoplaymates/olvidecontra.dart';
import 'package:firebase_core/firebase_core.dart';
<<<<<<< HEAD

import 'package:flutter/material.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
=======
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:location_permissions/location_permissions.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

>>>>>>> 9145fc65b3a711afa70b00eff1a96bcf292ebf83
  // Initialize a new Firebase App instance
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key key}) : super(key: key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {

        '/clientes_login': (BuildContext context) => clientes_login(),

      },
      title: 'Crypto Playmate',
      theme: ThemeData(

      ),
      home:
      //Inicio(),
      clientes_login(),
      // <--- App Clientes


    );
  }
}
