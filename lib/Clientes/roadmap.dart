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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Roadmap'),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children:  [
                  const Text('I', style: const TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('OPEN NFT MEMBERSHIP', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),
                  const Text('II', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('NFT MEMBERS DEMO', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),                  const SizedBox(width: 20,),
                  const Text('III', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('2022 NFT Power Cards Pre-sale', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: const TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('IV', style: const TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('NFT Members & Power Cards Demo', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('V', style: TextStyle(color: Colors.white, fontSize: 40, ),),
                  const SizedBox(width: 20,),
                  Text('Crypto Playmate Official Launch after Super Bowl LVI', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('VI', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('Recruit community manager for each Discord group', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('VII', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('Recruit new design team', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('VIII', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('Recruit new flutter devs', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('IX', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('Recruit new marketing team', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: const TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('X', style: const TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('New games release', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),

                  const Text('XI', style: TextStyle(color: Colors.white, fontSize: 40),),
                  const SizedBox(width: 20,),
                  Text('Create Crypto Playmate Foundation', style: TextStyle(color: Colors.purple[900], fontSize: 40),softWrap: true),
                  const SizedBox(width: 20,),
                  const Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  const SizedBox(width: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
