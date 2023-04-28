import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String? text;
  const StyledText({this.text,super.key});
  

  @override
  Widget build(BuildContext context) {
    return const Text('Hey',
        style: TextStyle(color: Colors.black12, fontSize: 24));
  }
}
