import 'package:flutter/material.dart';

class cryptactoe_lobby extends StatefulWidget {
  const cryptactoe_lobby({Key? key}) : super(key: key);

  @override
  cryptactoe_lobbyState createState() => cryptactoe_lobbyState();
}

class cryptactoe_lobbyState extends State<cryptactoe_lobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),
        centerTitle: true,
        title: Text('Lobby', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Foto de perfil y monedas"),
                Text("Lista de lobbys")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
