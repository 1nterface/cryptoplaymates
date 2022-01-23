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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left:100.0, right: 100.0),
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
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(left:100.0, right: 100.0),
                child: SizedBox(
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.purple[800],
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
