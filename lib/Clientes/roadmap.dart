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
                  children:  const [
                    Text('I', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,
                      title: Text('2022 NFT Member Spaces', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    Text('II', style: TextStyle(color: Colors.pink, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pink,

                      title: Text('222 NFT Power Cards Pre-sale', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Text('III', style: TextStyle(color: Color(0xFF815FD5), fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Color(0xFF815FD5),

                      title: Text('1800 NFT Power Cards Public Sale', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Text('IV', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,
                      title: Text('Recruit Discord community manager', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    Text('V', style: TextStyle(color: Colors.pink, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pink,
                      title: Text('Recruit design team', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    Text('VI', style: TextStyle(color: Color(0xFF815FD5), fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Color(0xFF815FD5),
                      title: Text('Recruit flutter devs', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    Text('VII', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,

                      title: Text('Recruit marketing team', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    Text('VIII', style: TextStyle(color: Colors.pink, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pink,
                      title: Text('Crypto Playmate Official Launch after SUPER BOWL LVI', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.pink, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 30,),

                    Text('IX', style: TextStyle(color: Color(0xFF815FD5), fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Color(0xFF815FD5),
                      title: Text('New games release', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Color(0xFF815FD5), fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),

                    Text('X', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.lightBlueAccent,
                      title: Text('Create Crypto Playmate Foundation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
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
