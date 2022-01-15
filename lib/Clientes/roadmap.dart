import 'package:flutter/material.dart';

class roadmap extends StatefulWidget {
  const roadmap({Key? key}) : super(key: key);

  @override
  _roadmapState createState() => _roadmapState();
}

class _roadmapState extends State<roadmap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Roadmap'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Roadmap', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
