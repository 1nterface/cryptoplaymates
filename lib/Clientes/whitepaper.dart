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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                children:[
                  Column(
                  children: const [
                    Text('Executive Summary', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),
                    SizedBox(width: 20,),
                    Text('Our Mission', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),
                    SizedBox(width: 20,),
                    Text('Our Vision', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),
                    SizedBox(width: 20,),
                    Text('Hyper-casual games presentation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),
                    SizedBox(width: 20,),
                    Text('Instructions', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),
                    SizedBox(width: 20,),
                    Text('NFT Members', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),
                    SizedBox(width: 20,),
                    Text('NFT Power Cards', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),
                    SizedBox(width: 20,),
                    Text('Crypto Playmate Foundation', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),
                    SizedBox(width: 20,),
                    Text('Team', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true),SizedBox(width: 20,),

                  ],
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
