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
                  ExpansionTile(
                    title: Text('Executive Summary', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                    Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('Our Mission', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('Our Vision', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('Hyper-casual Games Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('Instructions', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('NFT Members', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('NFT Power Cards', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('Crypto Playmate Foundation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    title: Text('Team', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
