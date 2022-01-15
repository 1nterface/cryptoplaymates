import 'package:flutter/material.dart';

class whitepaper extends StatefulWidget {
  const whitepaper({Key? key}) : super(key: key);

  @override
  whitepaperState createState() => whitepaperState();
}

class whitepaperState extends State<whitepaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text('Crypto Playmate'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Whitepaper', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
