import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String headText;
  const Heading({Key? key, required this.headText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      headText,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }
}
