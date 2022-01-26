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
        backgroundColor: Color(0xFF1F1B24),
        title: const Text('CrypTacToe', style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Color(0xFF1F1B24),
      resizeToAvoidBottomInset : false,
      body: ListView(
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
                        color: Colors.pink,
                        spreadRadius: 4,
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.pink,
                        spreadRadius: -4,
                        blurRadius: 5,
                      )
                    ]),
                child: SizedBox(
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                       Radius.circular(18.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple,
                        spreadRadius: 4,
                        blurRadius: 10,
                      ),
                       BoxShadow(
                        color: Colors.deepPurple,
                        spreadRadius: -4,
                        blurRadius: 5,
                      )
                    ]),
                child: SizedBox(
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.deepPurple,
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
    );
  }
}
