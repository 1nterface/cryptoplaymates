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
      backgroundColor: Color(0xFF1F1B24),
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1B24),

        centerTitle: true,
        title: const Text('Whitepaper'),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                children: const [
                  Text('Executive Summary', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                  SizedBox(width: 30,),
                  Text('Our Mission', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                  SizedBox(width: 30,),
                  Text('Our Vision', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),
                  SizedBox(width: 30,),
                  Text('Hyper-casual games presentation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),
                  SizedBox(width: 30,),
                  Text('Instructions', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),
                  SizedBox(width: 30,),
                  Text('NFT Members', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),
                  SizedBox(width: 30,),
                  Text('NFT Power Cards', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),
                  SizedBox(width: 30,),
                  Text('Crypto Playmate Foundation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),
                  SizedBox(width: 30,),
                  Text('Team', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),SizedBox(width: 20,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
