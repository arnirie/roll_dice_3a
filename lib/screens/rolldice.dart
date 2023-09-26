import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {

  int activeDiceFace = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
    'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
    'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
    'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8c/BBUK_Golden_Dice.png'];

  @override
  Widget build(BuildContext context) {
    print('build called');
    
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
            Colors.blue,
            Colors.purple,
          ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child:  Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Roll Dice',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(diceImage[activeDiceFace], 
              // color: Colors.amber.shade800,
              width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){
                //gen 0-5
                var ranNum = Random().nextInt(6);
                setState(() {
                  activeDiceFace = ranNum;
                });
                print('button pressed');
              }, 
              child: const Text('Roll!', 
              style: TextStyle(
                fontSize: 18, 
                color: Colors.white,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}