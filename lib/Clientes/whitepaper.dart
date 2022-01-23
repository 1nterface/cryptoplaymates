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
        title: Text('Whitepaper'),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text('Executive Summary', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('Our Mission', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('Our Vision', style: TextStyle(color: Colors.white, fontSize: 40),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
