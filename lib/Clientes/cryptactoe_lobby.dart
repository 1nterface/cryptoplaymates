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



                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(

                        elevation: 10.0,
                        color: Color(0xFF293143),
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () async{


                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(documents["folio"].toString(), style: TextStyle(color: Colors.white, fontSize: 20),),
                                      Icon(Icons.person, color: Colors.pinkAccent, size: 50),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Flexible(child: Text(documents["nombre"], style: TextStyle(color: Colors.white, fontSize: 25),)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children:[
                                          Column(
                                            children: [
                                              Text("Games", style: TextStyle(color: Colors.white12),),
                                              Text(documents["maxgame"], style: TextStyle(color: Colors.white),),
                                            ],
                                          ),
                                          Text(" | ", style: TextStyle(color: Colors.white12),),
                                          Column(
                                            children: [
                                              Text("Reward", style: TextStyle(color: Colors.white12),),
                                              Text(documents["maxmoney"], style: TextStyle(color: Colors.white),),
                                            ],
                                          ),
                                        ]
                                      )
                                    ],
                                  ),
                                ]
                              )
                            ),
                            //Container(color: Colors.black12,),
                          ],
                        ),
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