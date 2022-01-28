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
          child: Column(
            children:  [
              Stepper(
                steps: [
                  Step(
                    title: Text('OPEN 2022 NFT MEMBERSHIP', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('OPEN 2022 NFT POWER CARDS PRE-SALE', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('NFT MEMBERS & POWER CARDS DEMO', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('CRYPTO PLAYMATE OFFICIAL LAUNCH after SUPER BOWL LVI', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('RECRUIT COMMUNITY MANAGER FOR DISCORD GROUP', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('RECRUIT DESIGN TEAM', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('RECRUIT FLUTTER DEVS', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('RECRUIT MARKETING TEAM', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('NEW GAMES RELESEASE', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),

                  Step(
                    title: Text('CREATE CRYPTO PLAYMATE FOUNDATION', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),softWrap: true),
                    content: Text('Short description', style: TextStyle(color: Colors.white, fontSize: 25),softWrap: true),
                  ),
                ],
                onStepTapped: (int newIndex){
                  setState(() {
                    _currentStep = newIndex;
                  });
                },
                currentStep: _currentStep,
                onStepContinue: (){
                  if (_currentStep != 9){
                    setState(() {
                      _currentStep += 1;
                    });
                  }
                },
                onStepCancel: (){
                  if(_currentStep != 0){
                    setState(() {
                      _currentStep -= 1;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
