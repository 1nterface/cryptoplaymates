import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cryptoplaymates/Clientes/home.dart';
import 'package:cryptoplaymates/Modelo/cajas_modelo.dart';

class cryptactoe_lobby extends StatefulWidget {
  @override
  cryptactoe_lobbyState createState() => cryptactoe_lobbyState();
}

class cryptactoe_lobbyState extends State<cryptactoe_lobby> {

  CollectionReference reflistadecarrito = FirebaseFirestore.instance.collection('Lobby');


  var now = DateTime.now();
  FirebaseAuth auth = FirebaseAuth.instance;
  signOut() async {
    await auth.signOut();
  }

  DateTime startTime = DateTime(2018, 6, 23, 10, 30);
  DateTime endTime = DateTime(2018, 6, 23, 13, 00);

  DateTime currentTime = DateTime.now();

  DateTime current = DateTime.now();

  listaTodos(){

    return Expanded(
      child: StreamBuilder(
        //Asi encontraremos los negocios por ciudad y sin problemas con la BD
          stream: reflistadecarrito.where('id', isEqualTo: "123").where('estado', isEqualTo: "activo").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
            if (!snapshot.hasData) {
              return Text("Loading..");
            }

            else
            {
              //ESTE SI FUNCIONA, VOLVER A HACER TODO COM ESTE WIDGET
              return ListView(
                children: snapshot.data!.docs.map((documents) {

                  //LAS VARIABLES QUE DELCARO AQUI HACEN EL BAD STATE!!!!!!!

                  return InkWell(

                    onTap: () async{

                      final prefs2 = await SharedPreferences.getInstance();
                      final correoresta = prefs2.getString('correoresta') ?? "";

                      //_sheetCarrito(context, foto, nombreProducto);
                      //   showDialog(context: context, builder: (BuildContext context) => _buildAboutDialog(context, foto, nombreProducto, costo, descripcion, empresa, categoriap, newid, codigo),);
                      //_sheetComanda2(context, costo,  descripcion,  nombreProducto, foto);


                      //Navigator.of(context).pushNamed('/home');


                      //await Navigator.push(context, MaterialPageRoute(builder: (context) => home(cajas_modelo("", documents["empresa"],documents["miembrodesde"],documents["minutosSalida"],documents["entrada"], documents["salida"],4,5,documents["numero"],documents["correo"],documents["colonia"], documents["calle"], documents["empresa"], 0))),);


                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString('correoresta', documents["correo"]);
                      prefs.setString('empresa', documents["empresa"]);

                      final startTime = DateTime(2018, 6, 23, 10, 30);
                      final endTime = DateTime(2018, 6, 23, 13, 00);

                      final currentTime = DateTime.now();

                      if(currentTime.isAfter(startTime) && currentTime.isBefore(endTime)) {

                        print(currentTime);
                        print("hora");
                        // do something
                      }


                    },
                    child: Card(

                      elevation: 10.0,
                      color: Color(0xFF171B26),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom:10.0),
                            child: InkWell(
                              onTap: () async{


                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(documents["folio"].toString(), style: TextStyle(color: Colors.white, fontSize: 20),),
                                  Icon(Icons.person, color: Colors.pinkAccent, size: 30),
                                  Column(
                                    children: [
                                      Flexible(child: Text(documents["nombre"], style: TextStyle(color: Colors.white, fontSize: 25),)),
                                      Column(
                                        children: [
                                          Text("Games"),
                                          Text(documents["maxgame"]),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("Reward"),
                                          Text(documents["maxmoney"]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]
                              )
                            ),
                          ),
                          //Container(color: Colors.black12,),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            }
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),
        centerTitle: true,
        title: Text("Lobby"),
      ),
      body: Column(
        children: [
          listaTodos()//hu
        ],
      ),
    );
  }
}