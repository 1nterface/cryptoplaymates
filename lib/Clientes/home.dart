import 'dart:ui' as ui;
import 'dart:async';
import 'dart:html';
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

class home extends StatefulWidget {

  var data;
  home({this.data});
  @override
  homeState createState() => homeState();
}

class homeState extends State<home> {

  homeState();

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

  final String imageUrl = "https://www.elcarrocolombiano.com/wp-content/uploads/2019/01/20190122-MPM-ERELIS-AUTO-DEPORTIVO-MAS-BARATO-01.jpg";

  Widget hola (){

    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
          (int viewId) => ImageElement()..src = imageUrl,
    );
    return Container(
      height: 350,
      width: 500,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: HtmlElementView(
        viewType: imageUrl,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1B24),
        centerTitle: true,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                InkWell(
                  onTap:(){

                    Navigator.of(context).pushNamed('/nft_members');
                    },
                  child: Row(
                      children: [
                        Icon(Icons.add_chart, color: Colors.white),
                        SizedBox(width:10),
                        Text("NFT Members", style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),
                SizedBox(width: 15),
                InkWell(
                  onTap:(){
                    Navigator.of(context).pushNamed('/nft_power_cards');
                  },
                  child: Row(
                      children: [
                        Icon(Icons.sd_card_alert_rounded, color: Colors.white),
                        SizedBox(width:10),
                        Text("NFT Power Cards", style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),
                SizedBox(width: 15),

                InkWell(
                  onTap:(){
                    launchURL(url);
                  },
                  child: Row(
                      children: [
                        Icon(Icons.email, color: Colors.white),
                        SizedBox(width:10),
                        Text('Contact us', style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),
              ]
          ),
        ),
      ),
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
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        elevation: 1.0,
        shape: CircleBorder(),
        children: [

          SpeedDialChild(
              child: Icon(Icons.person, color: Colors.white,),
              backgroundColor: Colors.lightBlueAccent,
              label: 'Team',
              onTap: () async {

                Navigator.of(context).pushNamed('/team');
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),

          SpeedDialChild(
              child: Icon(Icons.account_tree, color: Colors.white,),
              backgroundColor: Colors.lightBlueAccent,
              label: 'Roadmap',
              onTap: () async {

                Navigator.of(context).pushNamed('/roadmap');
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),

          SpeedDialChild(
              child: Icon(Icons.list, color: Colors.white,),
              backgroundColor: Colors.lightBlueAccent,
              label: 'Whitepaper',
              onTap: () async {

                Navigator.of(context).pushNamed('/whitepaper');
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),


        ],
      ),
      backgroundColor: Color(0xFF1F1B24),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children:[
                CarouselSlider(
                  items: [

                    //hola(),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 800,
                              height: 70,
                              child: SizedBox(
                                child: RaisedButton(
                                  color: Colors.lightBlueAccent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children:const [
                                        Icon(Icons.gamepad_outlined, color : Colors.white),
                                        SizedBox(width:15),
                                        Text('P L A Y', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                                      ]
                                  ),
                                  onPressed: () async {
                                    Navigator.of(context).pushNamed("/cryptactoe");
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                              image: AssetImage("images/ancestral.jpg"),
                              fit: BoxFit.cover, //contain en todas ya que tenga los SS de los juegos
                            )
                        )
                    ),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/juegos_principal');

                                  },
                                  child: Text('Play'),
                                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                              image: AssetImage("images/c.png"),
                              fit: BoxFit.cover,
                            )
                        )
                    ),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/juegos_principal');

                                  },
                                  child: Text('Play'),
                                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                                ),
                              ],
                            ),
                          ],
                        ),
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('On Feb 2022', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}