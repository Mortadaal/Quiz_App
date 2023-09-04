import 'package:flutter/material.dart';

class StayledText extends StatelessWidget {
  const StayledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white),
    );
  }
}
