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
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text('Roadmap'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children:  [
                    const Text('I', style: const TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('OPEN 2022 NFT MEMBERSHIP', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('II', style: TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('OPEN 2022 NFT POWER CARDS PRE-SALE', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: const TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('III', style: const TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('NFT MEMBERS & POWER CARDS DEMO', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('IV', style: TextStyle(color: Colors.white, fontSize: 40, ),),
                    const SizedBox(width: 20,),
                    Text('CRYPTO PLAYMATE OFFICIAL LAUNCH after SUPER BOWL LVI', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('V', style: TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('RECRUIT COMMUNITY MANAGER FOR DISCORD GROUP', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('VI', style: TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('RECRUIT DESIGN TEAM', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('VII', style: TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('RECRUIT FLUTTER DEVS', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('VIII', style: TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('RECRUIT MARKETING TEAM', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: const TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('IX', style: const TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('NEW GAMES RELESEASES', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),

                    const Text('X', style: TextStyle(color: Colors.white, fontSize: 40),),
                    const SizedBox(width: 20,),
                    Text('CREATE CRYPTO PLAYMATE FOUNDATION', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                    const SizedBox(width: 20,),
                    const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                    const SizedBox(width: 40,),
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
