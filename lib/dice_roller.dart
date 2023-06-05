import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
    final randomizer=Random();
    var currentDiceRoll=2;
  void rollDice() {
    setState(() {
      currentDiceRoll=randomizer.nextInt(6)+1;
      print('Image Changing');
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png';,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20)),
            child: const Text("Roll Me"))
      ],
    );
  }
}
