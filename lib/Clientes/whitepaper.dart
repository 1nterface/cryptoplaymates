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
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ExpansionTile(
                      collapsedIconColor: Colors.lightBlueAccent,
                      iconColor: Colors.lightBlueAccent,
                      title: Text('Executive Summary', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                      Text('Crypto Playmate is a play-to-earn social gaming platform where users can compete in skill-based tournaments on simple and highly '
                          'engaging and entertaining hyper-casual games, to win crypto rewards.'
                          , style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.justify,
                      ),
                        Text('On Crypto Playmate, the more a player wins the more their in-platform rank grows, just like normal real-life leaderboards in competitive sports. Once a player advances their rank they can participate in more rewarding tournaments with higher entrance fees & reward pools. '
                            'Each tournament has a reward pool where WAM.app adds a fixed amount of WAM Coins for every player who pays the entrance fee. At the end of the tournament the rewards are distributed algorithmically to a percentage of the top players based on their score and ranking.'
                            , style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.justify
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Colors.pink,
                    iconColor: Colors.pink,
                    title: Text('Our Mission', style: TextStyle(color: Colors.pink, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Color(0xFF815FD5),
                    iconColor: Color(0xFF815FD5),

                    title: Text('Our Vision', style: TextStyle(color: Color(0xFF815FD5), fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Colors.lightBlueAccent,
                    iconColor: Colors.lightBlueAccent,

                    title: Text('Hyper-casual Games Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Colors.pink,
                    iconColor: Colors.pink,

                    title: Text('Instructions', style: TextStyle(color: Colors.pink, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Color(0xFF815FD5),
                    iconColor: Color(0xFF815FD5),

                    title: Text('NFT Members', style: TextStyle(color: Color(0xFF815FD5), fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Colors.lightBlueAccent,
                    iconColor: Colors.lightBlueAccent,

                    title: Text('NFT Power Cards', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Colors.pink,
                    iconColor: Colors.pink,

                    title: Text('Crypto Playmate Foundation', style: TextStyle(color: Colors.pink, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(width: 30,),

                  ExpansionTile(
                    collapsedIconColor: Color(0xFF815FD5),
                    iconColor: Color(0xFF815FD5),

                    title: Text('Team', style: TextStyle(color: Color(0xFF815FD5), fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                    children: [
                      Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
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
