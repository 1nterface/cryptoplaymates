import 'package:flutter/material.dart';

class roadmap extends StatefulWidget {
  const roadmap({Key? key}) : super(key: key);

  @override
  _roadmapState createState() => _roadmapState();
}

class _roadmapState extends State<roadmap> {

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),
        centerTitle: true,
        title: const Text('Roadmap'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  children:  [

                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,
                      title: Text('OPEN 2022 NFT MEMBERSHIP', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Colors.pink,

                      title: Text('OPEN 2022 NFT POWER CARDS PRE-SALE', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Color(0xFF815FD5),

                      title: Text('NFT MEMBERS & POWER CARDS DEMO', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,

                      title: Text('CRYPTO PLAYMATE OFFICIAL LAUNCH after SUPER BOWL LVI', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Colors.pink,

                      title: Text('RECRUIT COMMUNITY MANAGER FOR DISCORD GROUP', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Color(0xFF815FD5),

                      title: Text('RECRUIT DESIGN TEAM', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,

                      title: Text('RECRUIT FLUTTER DEVSs', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Colors.pink,

                      title: Text('RECRUIT MARKETING TEAM', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    ExpansionTile(
                      iconColor: Color(0xFF815FD5),

                      title: Text('NEW GAMES RELESEASE', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),

                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,

                      title: Text('CREATE CRYPTO PLAYMATE FOUNDATION', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
