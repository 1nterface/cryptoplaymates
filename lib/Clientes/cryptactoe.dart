import 'package:cloud_firestore/cloud_firestore.dart';
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

                        //Navigator.of(context).pushNamed("/panel_de_control");
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
                    child: StreamBuilder(
                      stream: FirebaseFirestore.instance.collection("Cajas")
                          .orderBy("nombreProducto", descending: true).snapshots(),
                      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                        if (!snapshot.hasData) {
                          return Text('Nada');
                        }
                        return Expanded(
                          child: Flex(
                              direction: Axis.vertical,
                              children: [
                                GridView.builder(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.docs.length,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10,
                                  ),
                                  itemBuilder: (BuildContext context, int index) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 150,
                                            width: 150,
                                            child: Image.network(snapshot.data()['foto'],
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              height: double.infinity,
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            bottom: 0,
                                            child: Container(
                                              height: 20,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.black38,
                                                      Colors.black38,
                                                    ],
                                                    begin: Alignment.bottomCenter,
                                                    end: Alignment.topCenter,
                                                  )
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 4,
                                            bottom: 5,
                                            child: Text(snapshot.data().documents[index]['nombreProducto'],
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ]),
                        );
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
