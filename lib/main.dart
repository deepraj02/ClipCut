import 'package:flutter/material.dart';

void main() {
  runApp(const ClipCut());
}

class ClipCut extends StatelessWidget {
  const ClipCut({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
