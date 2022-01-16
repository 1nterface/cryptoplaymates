import 'package:flutter/material.dart';

class juegos_principal extends StatefulWidget {
  const juegos_principal({Key? key}) : super(key: key);

  @override
  juegos_principalState createState() => juegos_principalState();
}

class juegos_principalState extends State<juegos_principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text('Welcome'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Home', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
