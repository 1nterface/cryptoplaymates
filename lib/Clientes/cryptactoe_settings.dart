import 'package:flutter/material.dart';

class cryptactoe_settings extends StatefulWidget {
  const cryptactoe_settings({Key? key}) : super(key: key);

  @override
  cryptactoe_settingsState createState() => cryptactoe_settingsState();
}

class cryptactoe_settingsState extends State<cryptactoe_settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text('Settings', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(),
        ),
      ),
    );
  }
}
