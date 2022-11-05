import 'package:flutter/material.dart';

class SkillsChip extends StatelessWidget {
  const SkillsChip({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      label: Text(
        text,
        style: const TextStyle(
          color: Colors.teal,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
