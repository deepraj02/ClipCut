import 'package:flutter/material.dart';

import '../../config/global_keys.config.dart';

class ShellPage extends StatelessWidget {
  static const String route = '/main';
  final Widget child;
  const ShellPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: GlobalKeysConfig.mainScaffold,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Stack(
          children: [
            Center(child: child),
          ],
        ));
  }
}
