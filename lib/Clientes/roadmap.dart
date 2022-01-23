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
                  Text('I', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('NFT MEMBERS', style: TextStyle(color: Colors.purple[900], fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),),
                  SizedBox(width: 40,),
                  Text('II', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('POWER CARDS MINT', style: TextStyle(color: Colors.purple[900], fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),),
                  SizedBox(width: 40,),                  SizedBox(width: 20,),
                  Text('III', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('GAME DEPLOYMENT', style: TextStyle(color: Colors.purple[900], fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),),
                  SizedBox(width: 40,),
                  Text('IV', style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('TOKEN DEPLOYMENT', style: TextStyle(color: Colors.purple[900], fontSize: 40),),
                  SizedBox(width: 20,),
                  Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),),
                  SizedBox(width: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
