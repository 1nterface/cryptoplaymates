import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Crypto Playmate", style: TextStyle(color: Colors.white)),),
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
              child: Icon(Icons.sd_card_alert_rounded, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'NFT Power Cards',
              onTap: () async {

                launchURL(url);
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),

          SpeedDialChild(
              child: Icon(Icons.add_chart, color: Colors.white,),
              backgroundColor: Colors.purple[800],
              label: 'NFT Members',
              onTap: () async {

                launchURL(url);
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),


        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
         Padding(
              padding: EdgeInsets.all(15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Row(
                      children: [
                        Icon(Icons.list, color: Colors.white),
                        SizedBox(width:10),
                        Text("Whitepaper", style: TextStyle(color: Colors.white),),
                      ]
                  ),
                  Row(
                      children: [
                        Icon(Icons.account_tree, color: Colors.white),
                        SizedBox(width:10),
                        Text("Roadmap", style: TextStyle(color: Colors.white),),
                      ]
                  ),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width:10),
                      Text('Contact us', style: TextStyle(color: Colors.white),),
                    ]
                  ),
                ]
            ),
            ),
          CarouselSlider(
            items: [

              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("images/a.png"),
                        fit: BoxFit.cover,
                      )
                  )
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("images/b.png"),
                        fit: BoxFit.cover,
                      )
                  )
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("images/c.png"),
                        fit: BoxFit.cover,
                      )
                  )
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("images/d.png"),
                        fit: BoxFit.cover,
                      )
                  )
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 0.8,
              height: 400,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              reverse: true,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('© 1nterfaCe de México 2022', style: TextStyle(color: Colors.cyan[800], fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ],
      )
    );
  }
}