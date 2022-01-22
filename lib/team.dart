import 'package:flutter/material.dart';

class team extends StatefulWidget {
  const team({Key? key}) : super(key: key);

  @override
  teamState createState() => teamState();
}

class teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text('Team'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
