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
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),

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
                    iconColor: Colors.lightBlueAccent,
                    title: Text('Executive Summary', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                    Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Colors.pink,

                    title: Text('Our Mission', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Color(0xFF815FD5),

                    title: Text('Our Vision', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Colors.lightBlueAccent,

                    title: Text('Hyper-casual Games Content', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Colors.pink,

                    title: Text('Instructions', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Color(0xFF815FD5),

                    title: Text('NFT Members', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Colors.lightBlueAccent,

                    title: Text('NFT Power Cards', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Colors.pink,

                    title: Text('Crypto Playmate Foundation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    iconColor: Color(0xFF815FD5),

                    title: Text('Team', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
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
