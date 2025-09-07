import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String text;
  const Footer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green, 
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}