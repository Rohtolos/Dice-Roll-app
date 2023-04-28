import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    int diceNumber = randomizer.nextInt(6) + 1 ;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Press!'))
      ],
    );
  }
}
