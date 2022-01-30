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
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final correo = user!.email;
    return Expanded(
      child: StreamBuilder(
        //Asi encontraremos los negocios por ciudad y sin problemas con la BD
          stream: reflistadecarrito.where('id', isEqualTo: "123").snapshots(),
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

                      elevation: 7.0,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom:10.0),
                            child: InkWell(
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Container(
                                  height: 250.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(documents["foto"]),
                                    ),
                                    //borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //Container(color: Colors.black12,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(documents["empresa"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black45),),
                                      //height: 30,
                                      width: 200,
                                    ),
                                    //SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child:
                                      documents["negocio"] =="cerrado"?
                                      Text("CERRADO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.red[800]),)
                                          :
                                      current.hour >= documents["entrada"] && current.hour < documents["salida"]?
                                      Text("ABIERTO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.green[800]),)
                                          :
                                      Text("CERRADO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.red[800]),),
                                      width: 200,
                                    ),
                                    Container(
                                      child:
                                      documents["minutosSalida"] == null?
                                      Text(documents["entrada"].toString()+":00 a "+documents["minutosSalida"].toString()+":00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.black45),)
                                          :
                                      Text(documents["entrada"].toString()+":00 a "+documents["salida"].toString()+":"+documents["minutosSalida"].toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.black45),),

                                      //height: 30,
                                      width: 100,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
          listaTodos()
        ],
      ),
    );
  }
}