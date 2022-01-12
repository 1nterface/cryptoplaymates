import 'dart:async';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';
import 'package:cryptoplaymates/Modelo/cajas_modelo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cryptoplaymates/authentication.dart';
import 'package:url_launcher/url_launcher.dart';

class clientes_login extends StatefulWidget {

  var data;
  clientes_login({this.data});
  @override
  clientes_loginState createState() => clientes_loginState();
}

class clientes_loginState extends State<clientes_login> {

  clientes_loginState();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String url = 'https://twitter.com/CryptoPlaymate';

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial( //Boton flotante animado,
        //marginRight: 18,
        //marginBottom: 30,
        animatedIcon: AnimatedIcons.home_menu,
        animatedIconTheme: IconThemeData(size: 25.0),
        // this is ignored if animatedIcon is non null
        // child: Icon(Icons.add),
        visible: true,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Crypto Playmate',
        heroTag: 'Crypto Playmate',
        backgroundColor: Colors.purple[800],
        foregroundColor: Colors.white,
        elevation: 1.0,
        shape: CircleBorder(),
        children: [

          SpeedDialChild(
              child: Icon(Icons.add_chart, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'NFT Member',
              onTap: () async {

                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),
          SpeedDialChild(
              child: Icon(Icons.account_tree, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'Power Cards',
              onTap: () async {

                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),
          SpeedDialChild(
              child: Icon(Icons.list, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'Roadmap 2022',
              onTap: () async {

                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),
          SpeedDialChild(
              child: Icon(Icons.announcement, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'Whitepaper',
              onTap: () async {

                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),
          SpeedDialChild(
              child: Icon(Icons.email, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'Contact us',
              onTap: () async {

                launchURL(url);
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),

        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('Crypto Playmate', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Text('On Feb 2022', style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],
          ),
        ],
      )
    );
  }
}